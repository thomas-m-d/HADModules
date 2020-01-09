//Purpose: To test basic LED functionality
//
//Status: All LEDs blink, and the #defines associate
//        each pin with its correct semantic meaning


#define ONES                  13
#define TWOS                  23
#define FOURS                 22
#define EIGHTS                21
#define LOWER                 11
#define HIGHER                12

void setup() {
  pinMode(HIGHER, OUTPUT);
}

void loop() {
  digitalWrite(HIGHER, HIGH);
  delay(500);
  digitalWrite(HIGHER, LOW);
  delay(500);
}
