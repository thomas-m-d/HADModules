//Purpose: To test basic functionality of CV outputs
//
//Status:

#define CV_SMALL_POT_1                3
#define CV_SMALL_POT_2                6
#define CV_SMALL_POT_3                5
#define CV_SMALL_POT_4                10
#define CV_LARGE_POT_1                4
#define CV_LARGE_POT_2                9

#define SMALL_POT_1           A5
#define SMALL_POT_2           A4
#define SMALL_POT_3           A3
#define SMALL_POT_4           A2
#define LARGE_POT_1           A1
#define LARGE_POT_2           A0

void setup() {
  analogWriteResolution(10);
  analogWriteFrequency(CV_SMALL_POT_1, 35156);
  analogWriteFrequency(CV_SMALL_POT_2, 35156);
  analogWriteFrequency(CV_SMALL_POT_3, 35156);
  analogWriteFrequency(CV_SMALL_POT_4, 35156);
  analogWriteFrequency(CV_LARGE_POT_1, 35156);
  analogWriteFrequency(CV_LARGE_POT_2, 35156);
}

void loop() {
  analogWrite(CV_SMALL_POT_1, analogRead(SMALL_POT_1));
  analogWrite(CV_SMALL_POT_1, analogRead(SMALL_POT_2));
  analogWrite(CV_SMALL_POT_1, analogRead(SMALL_POT_3));
  analogWrite(CV_SMALL_POT_1, analogRead(SMALL_POT_4));
  analogWrite(CV_SMALL_POT_1, analogRead(LARGE_POT_1));
  analogWrite(CV_SMALL_POT_1, analogRead(LARGE_POT_2));
}
