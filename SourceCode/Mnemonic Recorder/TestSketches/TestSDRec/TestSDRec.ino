//Sketch for testing SD setup and access

#include <SD.h>
#include <SPI.h>

File file;
const int chipSelect = BUILTIN_SDCARD;


void setup() {
  Serial.begin(9600);
  while(!Serial) {
    ;  
  }
  
  if (!SD.begin(chipSelect)) {
    Serial.println("Unable to access the SD card");
    return;
    //delay(500);
  }

  Serial.println("void setup() complete");

  file = SD.open("TestSD.txt", FILE_WRITE);
  if (file) {
    Serial.println("TestSDRec.txt opened");
  }
  
  while(true) {
    Serial.println("...in while loop...");
    delay(5000);
  }
}


void loop() {
  
}
