//Sketch for troubleshooting issues raised by TestAudioInOut.ino

#include <Audio.h>
#include <Wire.h>
#include <SPI.h>
#include <SD.h>
#include <Bounce.h>
#include <SerialFlash.h>

#define REC_PIN_0             7
#define INPUT_PIN             A1
#define TRIG_PIN_0            8
#define SAMPLE_NAME           "TstAudIO.RAW"
#define SDCARD_CS_PIN         BUILTIN_SDCARD

AudioPlaySdRaw                samplePlayer;

Bounce recButton = Bounce(REC_PIN_0,10);
Bounce trigIn = Bounce(TRIG_PIN_0,10);

void setup() {
  AudioMemory(80);
  
  Serial.begin(9600);
  while (!Serial) {}

  pinMode(REC_PIN_0, INPUT_PULLUP);
  pinMode(TRIG_PIN_0, INPUT_PULLUP);

  while (!(SD.begin(SDCARD_CS_PIN))) {
    Serial.println("Unable to access the SD card");
    delay(500);
  }
  
  Serial.println("setup() complete");
  Serial.println("Version with no play()");
}

void loop() {
  updateRecButtons();
  updateTrigIns();
}


void updateRecButtons() {
  recButton.update();
  if (recButton.fallingEdge()) {
    Serial.println("Record Botton Pressed");
  }
}


void updateTrigIns() {
  trigIn.update();
  if (trigIn.fallingEdge()) {
    Serial.println("Trig Button Pressed");
    playSample();
  }
}


void playSample() {
  Serial.println("In playSample()");

  if (!SD.exists(SAMPLE_NAME)) {
    Serial.print("File ");
    Serial.print(SAMPLE_NAME);
    Serial.println(" not found");
  } else {
    Serial.println("Playing sample");
    samplePlayer.stop();
    //samplePlayer.play(SAMPLE_NAME);
    
  }
}
