const int LED1 = 13;
const int buttonPin = 7; 
const int legSensor = A0;
int legSensorValue = 0;
int currentState = 0;

void setup() {
  // put your setup code here, to run once:
pinMode(buttonPin, INPUT_PULLUP);
pinMode (LED1, OUTPUT);
pinMode (legSensor, INPUT);
Serial.begin(115200);
}

void loop() {
  // put your main code here, to run repeatedly:
digitalWrite(LED1, HIGH);
legSensorValue = analogRead(legSensor);
currentState = digitalRead(buttonPin);

legSensorValue = legSensorValue / 4;
delay(10); 

if (Serial.avaliable()) {
  val = Serial.read();
  delay (10);
}
if (currentState == HIGH) {
  Serial.write(val);
}
if (legSensorValue == 200) {
  Serial.write(legSensorValue);
}
}
