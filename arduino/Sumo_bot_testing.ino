void setup() {
  Serial.begin(9600); 
  
  pinMode(A0, INPUT); 
  pinMode(A1, INPUT); 
  pinMode(A2, INPUT); 
  pinMode(A3, INPUT); 
}

void loop() {
  int rawForward = analogRead(A0);
  int rawBackward = analogRead(A1);
  int rawLeft = analogRead(A2);
  int rawRight = analogRead(A3);
  
  int stableForward = readStableInput(A0);
  int stableBackward = readStableInput(A1);
  int stableLeft = readStableInput(A2);
  int stableRight = readStableInput(A3);

  Serial.print("Raw Forward: ");
  Serial.print(rawForward);
  Serial.print(", Raw Backward: ");
  Serial.print(rawBackward);
  Serial.print(", Raw Left: ");
  Serial.print(rawLeft);
  Serial.print(", Raw Right: ");
  Serial.println(rawRight);

  Serial.print("Stable Forward: ");
  Serial.print(stableForward);
  Serial.print(", Stable Backward: ");
  Serial.print(stableBackward);
  Serial.print(", Stable Left: ");
  Serial.print(stableLeft);
  Serial.print(", Stable Right: ");
  Serial.println(stableRight);

  Serial.println("---------------------------------------------------");
  
  delay(500);
}

int readStableInput(int pin) {
  int value = analogRead(pin);
  delay(10);
  int stableValue = analogRead(pin);
  if (abs(value - stableValue) < 10) { 
    return stableValue;
  } else {
    return -1;
  }
}
