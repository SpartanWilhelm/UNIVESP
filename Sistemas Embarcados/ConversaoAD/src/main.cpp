#include <Arduino.h>

int analogPin = A3;   // terminal do meio de um potênciometro conectado ao pino 3

int val = 0;          //variável para guardar o valor lido

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);   // configura a porta serial
}

void loop() {
  // put your main code here, to run repeatedly:
  val = analogRead(analogPin);  //lê o pino de entrada
  Serial.println(val);          // imprime o valor na porta serial
}
