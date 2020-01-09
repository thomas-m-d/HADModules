//Sketch for testing basic recording functionality of 
//Audio In and 1st Rec Button

#include <Audio.h>
#include <Wire.h>
#include <SPI.h>
#include <SD.h>
#include <Bounce.h>
#include <SerialFlash.h>

#define REC_PIN_0          7
#define INPUT_PIN          A1
#define SAMPLE_NAME        "TstAudIn.raw"
#define SDCARD_CS_PIN      BUILTIN_SDCARD
#define SDCARD_MOSI_PIN    11
#define SDCARD_SCK_PIN     13


AudioInputAnalog        input(INPUT_PIN);
AudioRecordQueue        recQueue;

AudioConnection         in2Rec(input, 0, recQueue, 0);

Bounce recButton = Bounce(REC_PIN_0, 10);


void setup() {
  //Audio Setup
  AudioMemory(80);

  //Record Button Setup
  pinMode(REC_PIN_0, INPUT_PULLUP);

  //SD Setup
  SPI.setMOSI(SDCARD_MOSI_PIN);
  SPI.setSCK(SDCARD_SCK_PIN);
  while (!(SD.begin(SDCARD_CS_PIN))) {
    Serial.println("Unable to access the SD card");
    delay(500);
  }

  Serial.println("void setup() complete");  
}


void loop() {
    updateRecButtons();
}


void updateRecButtons() {
  recButton.update();
  if (recButton.fallingEdge()) {
    Serial.println("Record Botton Pressed");
    record();
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
