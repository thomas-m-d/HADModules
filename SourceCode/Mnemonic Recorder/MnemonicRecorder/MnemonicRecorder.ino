/* 
 * Copyright (c) 2019, Thomas Museus Dabay
 * Liscense: GNU General Public License Version 3 (GPL3)
 *      https://www.gnu.org/licenses/gpl.html
 *      
 * Description: 1.0 Firmware for eurorack module that records 4 channels of short audio
 * events to SD card, and plays them when receiving trigger/gate signals. For use with Teensy 3.6 
 * (https://www.pjrc.com/store/teensy36.html). Intended use is to record output of Mutable 
 * Instruments' Ears module.
 * 
 * I/O and Controls: 
 *      Buttons:
 *        Rec 0 - Hold to record audio into channel 0; Release to stop recording
 *        Rec 1 - Hold to record audio into channel 1; Release to stop recording
 *        Rec 2 - Hold to record audio into channel 2; Release to stop recording
 *        Rec 3 - Hold to record audio into channel 3; Release to stop recording
 *      Potentiometers:
 *        Vol 0 - Sets the output volume for channel 0
 *        Vol 1 - Sets the output volume for channel 1
 *        Fade 2/3 - Crossfades between channels 2 and 3
 *      I/O Jacks:
 *        Trig 0 - Triggers playback of channel 0
 *        Trig 1 - Triggers playback of channel 1
 *        Trig 2 - Triggers playback of channel 2
 *        Trig 3 - Triggers playback of channel 3
 *        
 *        Input - Audio input for recording into channels 0-3
 *        Output - Audio output with mix of channels 0-3
 * 
 * Inspired by Sample Code from 1010Music and Paul Stoffregen/PJRC
 *      https://forum.1010music.com/forum/diy-kits/euroshield/euroshield-sample-code/2508-introductory-sample-code
 *      https://github.com/paulstoffregen (especially https://github.com/PaulStoffregen/Audio/tree/master/examples/Recorder)
 * 
 * Debug Status: Record function drops samples
 */
 
#include <Audio.h>
#include <Wire.h>
#include <SPI.h>
#include <SD.h>
#include <Bounce.h>
#include <SerialFlash.h>


#define INPUT_PIN             A1

#define REC_PIN_0             7
#define REC_PIN_1             8
#define REC_PIN_2             9
#define REC_PIN_3             10

#define TRIG_PIN_0            0
#define TRIG_PIN_1            1
#define TRIG_PIN_2            2
#define TRIG_PIN_3            3

#define SAMPLE_NAME_0         "CH0.RAW"
#define SAMPLE_NAME_1         "CH1.RAW"
#define SAMPLE_NAME_2         "CH2.RAW"
#define SAMPLE_NAME_3         "CH3.RAW"

#define MAX_GAIN              1.3
#define MAX_ANALOG_READ       65535
#define VOL_PIN_0             A16
#define VOL_PIN_1             A17
#define FADE_PIN_2_3          A18

#define REC_THRESHOLD         .01

#define SDCARD_CS_PIN         BUILTIN_SDCARD


AudioInputAnalog              input(INPUT_PIN);
AudioAnalyzePeak              level;
AudioRecordQueue              recQueue;
AudioMixer4                   mixer;
AudioOutputAnalogStereo       outputs;

AudioPlaySdRaw                samplePlayer0;
AudioEffectFade               fade0;
AudioPlaySdRaw                samplePlayer1;
AudioEffectFade               fade1;
AudioPlaySdRaw                samplePlayer2;
AudioEffectFade               fade2;
AudioPlaySdRaw                samplePlayer3;
AudioEffectFade               fade3;

AudioConnection               inToRec(input, 0, recQueue, 0);
AudioConnection               inToLevel(input, 0, level, 0);

AudioConnection               samp0ToFade0(samplePlayer0, 0, fade0, 0);
AudioConnection               fade0ToMix(fade0, 0, mixer, 0);

AudioConnection               samp1ToFade1(samplePlayer1, 0, fade1, 0);
AudioConnection               fade1ToMix(fade1, 0, mixer, 1);

AudioConnection               samp2ToFade2(samplePlayer2, 0, fade2, 0);
AudioConnection               fade2ToMix(fade2, 0, mixer, 2);

AudioConnection               samp3ToFade3(samplePlayer3, 0, fade3, 0);
AudioConnection               fade3ToMix(fade3, 0, mixer, 3);

AudioConnection               mixToOut(mixer, 0, outputs, 0);


Bounce recButton0 = Bounce(REC_PIN_0, 10);
Bounce recButton1 = Bounce(REC_PIN_1, 10);
Bounce recButton2 = Bounce(REC_PIN_2, 10);
Bounce recButton3 = Bounce(REC_PIN_3, 10);

Bounce trigIn0 = Bounce(TRIG_PIN_0, 10);
Bounce trigIn1 = Bounce(TRIG_PIN_1, 10);
Bounce trigIn2 = Bounce(TRIG_PIN_2, 10);
Bounce trigIn3 = Bounce(TRIG_PIN_3, 10);

const int recPins[] = {REC_PIN_0, REC_PIN_1, REC_PIN_2, REC_PIN_3};
const char* sampNames[] = {SAMPLE_NAME_0, SAMPLE_NAME_1, SAMPLE_NAME_2, SAMPLE_NAME_3};
Bounce recButtons[] = {recButton0, recButton1, recButton2, recButton3};

//Debug
elapsedMillis audMem = 0;


void setup() {
  //Serial Setup
  Serial.begin(9600);
  while (!Serial) {}

  //Audio Setup
  AudioMemory(80);

  pinMode(REC_PIN_0, INPUT_PULLUP);
  pinMode(TRIG_PIN_0, INPUT_PULLDOWN);

  pinMode(REC_PIN_1, INPUT_PULLUP);
  pinMode(TRIG_PIN_1, INPUT_PULLDOWN);

  pinMode(REC_PIN_2, INPUT_PULLUP);
  pinMode(TRIG_PIN_2, INPUT_PULLDOWN);

  pinMode(REC_PIN_3, INPUT_PULLUP);
  pinMode(TRIG_PIN_3, INPUT_PULLDOWN);

  updateMixGain();

  fade0.fadeOut(1);
  fade1.fadeOut(1);
  fade2.fadeOut(1);
  fade3.fadeOut(1);

  outputs.analogReference(EXTERNAL);

  //SD Setup
  while (!(SD.begin(SDCARD_CS_PIN))) {
    Serial.println("Unable to access the SD card");
    delay(500);
  }

  Serial.println("setup() complete");
}


void loop() {
  updateMixGain();
  fadeOutSamples();
  scanRecButtons();
  scanTrigIns();

  //  if (audMem > 1000) {
  //    Serial.print("AudioMemory Max Usage is: ");
  //    Serial.println(AudioMemoryUsageMax());
  //    audMem = 0;
  //  }
}


void updateMixGain() {
  float gain0 = (MAX_GAIN * analogRead(VOL_PIN_0)) / MAX_ANALOG_READ;
  float gain1 = (MAX_GAIN * analogRead(VOL_PIN_1)) / MAX_ANALOG_READ;
  float gain2 = (MAX_GAIN * analogRead(FADE_PIN_2_3)) / MAX_ANALOG_READ;
  float gain3 = (MAX_GAIN * (MAX_ANALOG_READ - analogRead(FADE_PIN_2_3))) / MAX_ANALOG_READ;

  mixer.gain(0, gain0);
  mixer.gain(1, gain1);
  mixer.gain(2, gain2);
  mixer.gain(3, gain3);
}


void fadeOutSamples() {
  if (samplePlayer0.lengthMillis() -
      samplePlayer0.positionMillis() <= 5) fade0.fadeOut(3);
  if (samplePlayer1.lengthMillis() -
      samplePlayer1.positionMillis() <= 5) fade1.fadeOut(3);
  if (samplePlayer2.lengthMillis() -
      samplePlayer2.positionMillis() <= 5) fade2.fadeOut(3);
  if (samplePlayer3.lengthMillis() -
      samplePlayer3.positionMillis() <= 5) fade3.fadeOut(3);
}


void scanRecButtons() {
  recButton0.update();
  recButton1.update();
  recButton2.update();
  recButton3.update();

  if (recButton0.fallingEdge()) {
    Serial.println("Record Button 0 Pressed");
    record(0);
  } else if (recButton1.fallingEdge()) {
    Serial.println("Record Button 1 Pressed");
    record(1);
  } else if (recButton2.fallingEdge()) {
    Serial.println("Record Button 2 Pressed");
    record(2);
  } else if (recButton3.fallingEdge()) {
    Serial.println("Record Button 3 Pressed");
    record(3);
  }
}


void scanTrigIns() {
  trigIn0.update();
  trigIn1.update();
  trigIn2.update();
  trigIn3.update();

  if (trigIn0.risingEdge()) {
    Serial.println("Sample 0 Triggered");
    playSample(0);
  } else if (trigIn1.risingEdge()) {
    Serial.println("Sample 1 Triggered");
    playSample(1);
  } else if (trigIn2.risingEdge()) {
    Serial.println("Sample 2 Triggered");
    playSample(2);
  } else if (trigIn3.risingEdge()) {
    Serial.println("Sample 3 Triggered");
    playSample(3);
  }
}


void record(int channel) {
  Serial.println("Entering record()");

  File file = recordSetup(channel);
  if (!file) return;
  if (thresholdDelay(channel) != 0) return;
  recordStart(channel, file);
  recordEnd(file);

  Serial.println("Exiting record()");
}


File recordSetup(int channel) {
  if (SD.exists( sampNames[channel])) {
    SD.remove(sampNames[channel]);
    Serial.print("Deleting ");
    Serial.println(sampNames[channel]);
  }
  File file = SD.open(sampNames[channel], FILE_WRITE);
  if (!file) {
    Serial.println("Error: File Not Found");
    while (digitalRead(recPins[channel]) == LOW) {}
  }
  return file;
}


int thresholdDelay(int channel) {
  if (level.available()) level.read();    //flushes any old values in level
  while (1) {
    recButtons[channel].update();
    if (recButtons[channel].risingEdge()) {
      Serial.println("Button Released before Recording Started");
      return 1;
    }
    if (level.available() && (level.read() > REC_THRESHOLD)) break;
  }
  return 0;
}


void recordStart(int channel, File file) {
  Serial.println("Starting to Record");
  recQueue.begin();
  while (!recButtons[channel].risingEdge()) {
    recButtons[channel].update();

    if (recQueue.available() >= 2) {
      byte buffer[512];

      memcpy(buffer, recQueue.readBuffer(), 256);
      recQueue.freeBuffer();
      memcpy(buffer + 256, recQueue.readBuffer(), 256);
      recQueue.freeBuffer();

      file.write(buffer, 512);
    }
  }
}


void recordEnd(File file) {
  Serial.println("Record Button Released");
  recQueue.end();
  while (recQueue.available() >= 2) {
    file.write((byte*)recQueue.readBuffer(), 256);
    recQueue.freeBuffer();
  }
  file.close();
}


void playSample(int channel) {
  if (!SD.exists(sampNames[channel])) {
    Serial.print("File ");
    Serial.print(sampNames[channel]);
    Serial.println(" not found");
  } else {
    Serial.print("Playing ");
    Serial.println(sampNames[channel]);
    if (channel == 0) {
      samplePlayer0.stop();
      AudioNoInterrupts();
      fade0.fadeIn(1);
      samplePlayer0.play(sampNames[channel]);
      AudioInterrupts();
    } else if (channel == 1) {
      samplePlayer1.stop();
      AudioNoInterrupts();
      fade1.fadeIn(1);
      samplePlayer1.play(sampNames[channel]);
      AudioInterrupts();
    } else if (channel == 2) {
      samplePlayer2.stop();
      AudioNoInterrupts();
      fade2.fadeIn(1);
      samplePlayer2.play(sampNames[channel]);
      AudioInterrupts();
    } else if (channel == 3) {
      samplePlayer3.stop();
      AudioNoInterrupts();
      fade3.fadeIn(1);
      samplePlayer3.play(sampNames[channel]);
      AudioInterrupts();
    }
  }
}
