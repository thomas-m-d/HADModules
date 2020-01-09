/*Proof-of-Concept Firmware for eurorack module that records short audio events
 * to SD card, and plays them when receiving a trigger/gate signal. Intended use
 * is to record output of Mutable Instruments' Ears module.
 * 
 * Status: recording and playback are functional; trimming of silence at beginning of recording is functional, but
 * introduces a click
 * 
 * Created by Thomas Dabay
 * Using Sample Code from 1010Music and Paul Stoffregen/PJRC
 *      https://forum.1010music.com/forum/diy-kits/euroshield/euroshield-sample-code/2508-introductory-sample-code
 *      https://github.com/paulstoffregen
 *      
 * For use with Teensy 3.6 and 1010Music's Euroshield platform
 *      https://1010music.com/product/euroshield1
 */

#include <Audio.h>
#include <Wire.h>
#include <SPI.h>
#include <SD.h>
#include <Bounce.h>
#include <SerialFlash.h>


//Audio Objects
AudioInputI2S             inputs;
AudioOutputI2S            outputs;
AudioRecordQueue          recQueue;
AudioControlSGTL5000      codec;
AudioAnalyzePeak          trig;
AudioAnalyzePeak          level;
AudioPlaySdRaw            samplePlayer;
AudioConnection           in2Queue(inputs, 0, recQueue, 0);
AudioConnection           in2Level(inputs, 0, level, 0);
AudioConnection           in2Trig(inputs, 1, trig, 0);
AudioConnection           sample2Out0(samplePlayer, 0, outputs, 0);
AudioConnection           sample2Out1(samplePlayer, 0, outputs, 1);

//Record Button
#define REC_THRESHOLD     .05                      //Sets threshold that audio in must pass before recording starts (between 0 & 1)
const int buttonPin = 2;
Bounce recButton =  Bounce(buttonPin, 10);

//Trigger Input
bool newTrig = false;
bool oldTrig = false;

//SD Card (for Teensy 3.6)
#define SDCARD_CS_PIN      BUILTIN_SDCARD
#define SDCARD_MOSI_PIN    11
#define SDCARD_SCK_PIN     13
#define SAMPLE_NAME        "SAMPLE.RAW"
File sampleFile;

//Debug
int audioMemCount = 0;


void setup() {
  //Buffer Setup
  AudioMemory(80);

  //SGTL5000 Setup
  codec.enable();
  codec.inputSelect(AUDIO_INPUT_LINEIN);
  codec.volume(.75);
  codec.adcHighPassFilterDisable();
  codec.lineInLevel(0,0);
  codec.unmuteHeadphone();

  //Button Setup
  pinMode(buttonPin, INPUT_PULLUP);

  //SD Card Setup
  SPI.setMOSI(SDCARD_MOSI_PIN);
  SPI.setSCK(SDCARD_SCK_PIN);
  while (!(SD.begin(SDCARD_CS_PIN))) {
    Serial.println("Unable to access the SD card");
    delay(500);
  }

  Serial.println("void setup() complete");
} 

void loop() {
  /* Outline of loop(): 
   *  if recButton is pressed
   *    if file exists, delete it;
   *    while recButton is pressed, record; 
   *    when recButton is released, finish recording and snip silence at beginning/end;
   *  
   *  if trig is greater than threshold for first time
   *    if sample is already playing, stop playing sample;
   *    play sample from beginning;
  */
  
  //Detect when recButton is first pressed
  recButton.update();
  if (recButton.fallingEdge()) {
    Serial.println("Record Botton Pressed");

    //Setup file to record into
    samplePlayer.stop();
    if(SD.exists(SAMPLE_NAME)) SD.remove(SAMPLE_NAME);
    sampleFile = SD.open(SAMPLE_NAME, FILE_WRITE);

    //Record
    if(sampleFile) record(sampleFile);
    else Serial.println("Error: File Not Found");
    
  }


  //Check current status of Trigger Input
  if (trig.available()) {
    if (trig.read() > .9) {
      newTrig = true;
    } else newTrig = false;
  }


  //Respond to rising edge at Trigger Input
  if (newTrig && !oldTrig) {
    Serial.println("Trigger is High");
    if (!SD.exists(SAMPLE_NAME)) {
      Serial.print("File ");
      Serial.print(SAMPLE_NAME);
      Serial.println(" not found");
    } else {
      samplePlayer.stop();
      samplePlayer.play(SAMPLE_NAME);
    }
  }

  //Respond to falling edge at Trigger Input
  if (!newTrig && oldTrig) {
    Serial.println("Trigger is Low");
  }


  //Update Trigger Input status
  oldTrig = newTrig;

  //Debug Code
  audioMemCount++;
  if (audioMemCount == 5000000) {
    Serial.print("AudioMemory Max Usage is: ");
    Serial.println(AudioMemoryUsageMax());
    audioMemCount = 0;
  }
  
}


void record(File file) {
  //Setup
  Serial.println("Entering void record(file)");
  recQueue.begin();
  if (level.available()) level.read();                    //flushes any onld values in level

  //Wait until Signal is Present
  while(1) {
    recButton.update();
    if (recButton.risingEdge()) {
      Serial.println("Button Released before Recording Started");
      return;
    }
    if (level.available() && (level.read() > REC_THRESHOLD)) break;
  }
  
  //Start Recording
  Serial.println("Starting to Record");
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
  while (recQueue.available() > 0) {
    file.write((byte*)recQueue.readBuffer(), 256);
    recQueue.freeBuffer();
  }  
  file.close();                                             //consider adding code to trim silence at beginning/end of file?
  Serial.println("Exiting void record(file)");
  
}
