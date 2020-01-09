//Purpose: To test basic functionality of trigger ins
//
//Status: Both trig ins work like they should, and the #defines
//          associate each pin with the correct semantic meaning

#include <Bounce.h>

#define PREV_STEP_CV      8
#define NEXT_STEP_CV      7

#define LOWER             11
#define HIGHER            12

Bounce prevStepBounce = Bounce(PREV_STEP_CV, 10);
Bounce nextStepBounce = Bounce(NEXT_STEP_CV, 10);

void setup() {
  pinMode(PREV_STEP_CV, INPUT_PULLDOWN);
  pinMode(NEXT_STEP_CV, INPUT_PULLDOWN);

  pinMode(LOWER, OUTPUT);
  pinMode(HIGHER, OUTPUT);
}

void loop() {
  prevStepBounce.update();
  nextStepBounce.update();
  
  if (prevStepBounce.risingEdge()) {
    digitalWrite(LOWER, HIGH);
    while (!prevStepBounce.fallingEdge()) prevStepBounce.update();
    digitalWrite(LOWER, LOW);
  }

  if (nextStepBounce.risingEdge()) {
    digitalWrite(HIGHER, HIGH);
    while (!nextStepBounce.fallingEdge()) nextStepBounce.update();
    digitalWrite(HIGHER, LOW);
  }
}
