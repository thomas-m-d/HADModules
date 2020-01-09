//Sketch to test whether volume/crossfade potentiometers work,
//and to test the formulae for setting each channel's gain.

const int volPinOne = A16;
const int volPinTwo = A17;
const int fadePinThreeFour = A18;

#define MAX_ANALOG_READ     1024
#define MAX_GAIN            1.2

elapsedMillis timer;
float volOne, volTwo, volThree, volFour;

void setup() {
  Serial.begin(9600);
  while (!Serial) {}
  
  timer = 0;
}

void loop() {
  if (timer > 750) {
    volOne = (MAX_GAIN * analogRead(volPinOne)) / MAX_ANALOG_READ;
    volTwo = (MAX_GAIN * analogRead(volPinTwo)) / MAX_ANALOG_READ;
    volThree = (MAX_GAIN * analogRead(fadePinThreeFour)) / MAX_ANALOG_READ;
    volFour = (MAX_GAIN * (MAX_ANALOG_READ - analogRead(fadePinThreeFour))) / MAX_ANALOG_READ;
    
    Serial.print("Volume One: ");
    Serial.println(volOne);
    Serial.print("Volume Two: ");
    Serial.println(volTwo);
    Serial.print("Volume Three: ");
    Serial.println(volThree);
    Serial.print("Volume Four: ");
    Serial.println(volFour);
    Serial.println();

    Serial.print("Analog Value One: ");
    Serial.println(analogRead(volPinOne));
    Serial.print("Analog Value Two: ");
    Serial.println(analogRead(volPinTwo));
    Serial.print("Analog Value Three: ");
    Serial.println(analogRead(fadePinThreeFour));
    Serial.println();
    Serial.println();
    Serial.println();
    
    timer = 0;
  }
}
