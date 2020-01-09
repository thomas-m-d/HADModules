elapsedMillis time = 0;
int sineNum;

void setup() {
  Serial.begin(9600);
  while(!Serial) {}
  analogWriteResolution(10);
  analogWriteFrequency(10, 35156);
}

void loop() {
  if (time >250) {
    time = 0;
    Serial.println(analogRead(A8));
  }
  analogWrite(10, analogRead(A8));
}
