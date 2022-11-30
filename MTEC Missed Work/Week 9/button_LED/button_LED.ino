const int buttonPin = 2;
const int LED1 = 13;
const int LED2 = 12;
const int LED3 = 11;
const int LED4 = 10;

int buttonState = 0; 

void setup() {
  // put your setup code here, to run once:
pinMode(LED1, OUTPUT);
pinMode(LED2, OUTPUT);
pinMode(LED3, OUTPUT);
pinMode(LED4, OUTPUT);
pinMode(buttonPin, INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
buttonState = digitalRead(buttonPin);

if (buttonState ==  HIGH) {
  digitalWrite(LED4, HIGH);
   digitalWrite(LED3,HIGH);
    digitalWrite(LED2,HIGH);
     digitalWrite(LED1, HIGH);
} else {
  digitalWrite(LED4, LOW); 
   digitalWrite(LED3,LOW);
    digitalWrite(LED2,LOW);
     digitalWrite(LED1,LOW);
  }
}
