//Sketch for testing Audio In and Out
//Audio In should be recordered and 
//and then played back through Audio Out
//
//Note: For convenience 2nd Record Button
//is here being used to trigger the 1st channel

#include <Audio.h>
#include <Wire.h>
#include <SPI.h>
#include <SD.h>
#include <Bounce.h>
#include <SerialFlash.h>

#define REC_PIN_0             7
#define INPUT_PIN             A1
#define TRIG_PIN_0            8
#define SAMPLE_NAME           "CH2.RAW"
#define SDCARD_CS_PIN         BUILTIN_SDCARD


AudioInputAnalog              input(INPUT_PIN);
AudioRecordQueue              recQueue;
AudioPlaySdRaw                samplePlayer;
AudioOutputAnalogStereo       outputs;

AudioConnection               in2Rec(input, 0, recQueue, 0);
AudioConnection               samp2Outs(samplePlayer, 0, outputs, 0);

Bounce recButton = Bounce(REC_PIN_0, 10);
Bounce trigIn = Bounce(TRIG_PIN_0, 10);


void setup() {
  //Audio Setup
  AudioMemory(80);

  //Serial Setup
  Serial.begin(9600);
  while (!Serial) {}

  //Trig/Rec Setup
  pinMode(REC_PIN_0, INPUT_PULLUP);
  pinMode(TRIG_PIN_0, INPUT_PULLUP);

  //SD Setup
  while (!(SD.begin(SDCARD_CS_PIN))) {
    Serial.println("Unable to access the SD card");
    delay(500);
  }

  Serial.println("setup() complete"); 
}


void loop() {
  updateRecButtons();

  updateTrigIns();
}


void updateRecButtons() {
  recButton.update();
  if (recButton.fallingEdge()) {
    Serial.println("Record Button Pressed");
    record();
  }
}


void updateTrigIns() {
  trigIn.update();
  if (trigIn.fallingEdge()) {
    Serial.println("Sample Triggered");
    playSample();
  }
}


void record() {
  Serial.println("Entering record()");

  //Setup file to record into
  if(SD.exists(SAMPLE_NAME)) {
    SD.remove(SAMPLE_NAME);
    Serial.print("Deleting ");
    Serial.println(SAMPLE_NAME);
  }
  File file = SD.open(SAMPLE_NAME, FILE_WRITE);
  if(!file) {
    Serial.println("Error: File Not Found");
    while (digitalRead(REC_PIN_0) == LOW) {}
    return;
  }

  //Start Recording
  Serial.println("Starting to Record");
  recQueue.begin();
  while (!recButton.risingEdge()) {
    recButton.update();
    
    if (recQueue.available() >= 2) {
      byte buffer[512];
      
      memcpy(buffer, recQueue.readBuffer(), 256);
      recQueue.freeBuffer();
      memcpy(buffer+256, recQueue.readBuffer(), 256);
      recQueue.freeBuffer();
      
      file.write(buffer, 512);
    }
  }

  //Finish Recording
  Serial.println("Record Button Released");
  recQueue.end();
  while (recQueue.available() >= 2) {
    file.write((byte*)recQueue.readBuffer(), 256);
    recQueue.freeBuffer();
  }  
  file.close();
  Serial.println("Exiting record()");
}


void playSample() {
  if (!SD.exists(SAMPLE_NAME)) {
    Serial.print("File ");
    Serial.print(SAMPLE_NAME);
    Serial.println(" not found");
  } else {
    Serial.println("Playing sample");
    samplePlayer.stop();
    samplePlayer.play(SAMPLE_NAME);
  }
}
