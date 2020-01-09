//Sketch for testing whether the Trigger Inputs and Record Buttons
//are functioning properly

const int trigOnePin = 0;
const int trigTwoPin = 1;
const int trigThreePin = 2;
const int trigFourPin = 3;
const int recOnePin = 7;
const int recTwoPin = 8;
const int recThreePin = 9;
const int recFourPin = 10;
const int ledPin = 13;


void setup() {
  pinMode(trigOnePin, INPUT_PULLDOWN);
  pinMode(trigTwoPin, INPUT_PULLDOWN);
  pinMode(trigThreePin, INPUT_PULLDOWN);
  pinMode(trigFourPin, INPUT_PULLDOWN);

  pinMode(recOnePin, INPUT_PULLUP);
  pinMode(recTwoPin, INPUT_PULLUP);
  pinMode(recThreePin, INPUT_PULLUP);
  pinMode(recFourPin, INPUT_PULLUP);

  pinMode(ledPin, OUTPUT);

  delay(1000);
}

void loop() {  
  if (digitalRead(trigOnePin)==HIGH) {
    digitalWrite(ledPin,HIGH);
    while (digitalRead(trigOnePin)==HIGH) {}
    digitalWrite(ledPin,LOW);
  } else if (digitalRead(trigTwoPin)==HIGH) {
    digitalWrite(ledPin,HIGH);
    while (digitalRead(trigTwoPin)==HIGH) {}
    digitalWrite(ledPin,LOW);
  } else if (digitalRead(trigThreePin)==HIGH) {
    digitalWrite(ledPin,HIGH);
    while (digitalRead(trigThreePin)==HIGH) {}
    digitalWrite(ledPin,LOW);
  } else if (digitalRead(trigFourPin)==HIGH) {
    digitalWrite(ledPin,HIGH);
    while (digitalRead(trigFourPin)==HIGH) {}
    digitalWrite(ledPin,LOW);
  } else if (digitalRead(recOnePin)==LOW) {        //Start RecPin ifs
    digitalWrite(ledPin,HIGH);
    while (digitalRead(recOnePin)==LOW) {}
    digitalWrite(ledPin,LOW);
  } else if (digitalRead(recTwoPin)==LOW) {
    digitalWrite(ledPin,HIGH);
    while (digitalRead(recTwoPin)==LOW) {}
    digitalWrite(ledPin,LOW);
  } else if (digitalRead(recThreePin)==LOW) {
    digitalWrite(ledPin,HIGH);
    while (digitalRead(recThreePin)==LOW) {}
    digitalWrite(ledPin,LOW);
  } else if (digitalRead(recFourPin)==LOW) {
    digitalWrite(ledPin,HIGH);
    while (digitalRead(recFourPin)==LOW) {}
    digitalWrite(ledPin,LOW);
  }  
}
