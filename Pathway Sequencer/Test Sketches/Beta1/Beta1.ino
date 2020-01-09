#include <EEPROM.h>
#include <Bounce.h>


//Inputs
#define SMALL_POT_1           A5
#define SMALL_POT_2           A4
#define SMALL_POT_3           A3
#define SMALL_POT_4           A2
#define LARGE_POT_1           A1
#define LARGE_POT_2           A0
#define SLEW_POT              A6
#define PREV_STEP_BUTTON      1
#define PREV_STEP_CV          8
#define NEXT_STEP_BUTTON      0
#define NEXT_STEP_CV          7

//Outputs
#define CV_SMALL_POT_1        3
#define CV_SMALL_POT_2        6
#define CV_SMALL_POT_3        5
#define CV_SMALL_POT_4        10
#define CV_LARGE_POT_1        4
#define CV_LARGE_POT_2        9

//LEDs
#define ONES                  13
#define TWOS                  23
#define FOURS                 22
#define EIGHTS                21
#define LOWER                 11
#define HIGHER                12


Bounce prevStepButton = Bounce(PREV_STEP_BUTTON, 10);
Bounce prevStepCv = Bounce(PREV_STEP_CV, 10);
Bounce nextStepButton = Bounce(NEXT_STEP_BUTTON, 10);
Bounce nextStepCv = Bounce(NEXT_STEP_CV, 10);

void setup() {
  Serial.begin(9600);
  while (!Serial) {}

  pinMode(ONES, OUTPUT);
  pinMode(TWOS, OUTPUT);
  pinMode(FOURS, OUTPUT);
  pinMode(EIGHTS, OUTPUT);
  pinMode(LOWER, OUTPUT);
  pinMode(HIGHER, OUTPUT);
  
  pinMode(PREV_STEP_BUTTON, INPUT_PULLUP);
  pinMode(PREV_STEP_CV, INPUT_PULLDOWN);
  
  pinMode(NEXT_STEP_BUTTON, INPUT_PULLUP);
  pinMode(NEXT_STEP_CV, INPUT_PULLDOWN);

  analogWriteResolution(10);
  analogWriteFrequency(CV_SMALL_POT_1, 35156);
  analogWriteFrequency(CV_SMALL_POT_2, 35156);
  analogWriteFrequency(CV_SMALL_POT_3, 35156);
  analogWriteFrequency(CV_SMALL_POT_4, 35156);
  analogWriteFrequency(CV_LARGE_POT_1, 35156);
  analogWriteFrequency(CV_LARGE_POT_2, 35156);

  Serial.println("setup() complete");
}

void loop() {
  // put your main code here, to run repeatedly:
}
