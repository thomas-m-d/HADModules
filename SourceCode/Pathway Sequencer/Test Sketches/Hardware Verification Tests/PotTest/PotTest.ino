//Purpose: To test basic potentiometer functionality
//
////Status: All pots work like they should. The #defines
//          associate each pin with the correct semantic
//          meaning. As is, the range of analogRead is
//          0 to 1023.

#include <Bounce.h>

#define SMALL_POT_1           A5
#define SMALL_POT_2           A4
#define SMALL_POT_3           A3
#define SMALL_POT_4           A2
#define LARGE_POT_1           A1
#define LARGE_POT_2           A0
#define SLEW_POT              A6

#define PREV_STEP_BUTTON      1

Bounce prevStepBounce = Bounce(PREV_STEP_BUTTON, 10);

void setup() {
  Serial.begin(9600);
  while(!Serial) {}

  pinMode(PREV_STEP_BUTTON, INPUT_PULLUP);
}

void loop() {
  prevStepBounce.update();
  
  if (prevStepBounce.fallingEdge()) {
    Serial.print("Small Pot 1: ");
    Serial.println(analogRead(SMALL_POT_1));
    
    Serial.print("Small Pot 2: ");
    Serial.println(analogRead(SMALL_POT_2));
    
    Serial.print("Small Pot 3: ");
    Serial.println(analogRead(SMALL_POT_3));
    
    Serial.print("Small Pot 4: ");
    Serial.println(analogRead(SMALL_POT_4));
    
    Serial.print("Large Pot 1: ");
    Serial.println(analogRead(LARGE_POT_1));
    
    Serial.print("Large Pot 2: ");
    Serial.println(analogRead(LARGE_POT_2));
    
    Serial.print("Slew Pot: ");
    Serial.println(analogRead(SLEW_POT));

    Serial.println();
    Serial.println();
  }
}
