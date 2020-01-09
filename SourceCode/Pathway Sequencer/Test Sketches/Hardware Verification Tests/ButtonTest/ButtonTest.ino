//Purpose: To test basic button functionality
//
//Status: Both buttons function properly, and the #defines
//          associate each button pin with the correct semantic
//          meaning

#include <Bounce.h>

#define LOWER                 11
#define HIGHER                12

#define PREV_STEP_BUTTON      1
#define NEXT_STEP_BUTTON      0

Bounce prevStepBounce = Bounce(PREV_STEP_BUTTON, 10);
Bounce nextStepBounce = Bounce(NEXT_STEP_BUTTON, 10);

void setup() {
  pinMode(LOWER, OUTPUT);
  pinMode(HIGHER, OUTPUT);

  pinMode(PREV_STEP_BUTTON, INPUT_PULLUP);
  pinMode(NEXT_STEP_BUTTON, INPUT_PULLUP);
}

void loop() {
  prevStepBounce.update();
  if (prevStepBounce.fallingEdge()) {
    digitalWrite(LOWER, HIGH);
    while (!prevStepBounce.risingEdge()) prevStepBounce.update();
    digitalWrite(LOWER, LOW);
  }

  nextStepBounce.update();
  if (nextStepBounce.fallingEdge()) {
    digitalWrite(HIGHER, HIGH);
    while (!nextStepBounce.risingEdge()) nextStepBounce.update();
    digitalWrite(HIGHER, LOW);
  }
}
