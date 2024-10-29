#include "pitches.h"

const int button1Pin = 2;
const int button2Pin = 3;
const int led1Pin = 4;
const int led2Pin = 5;
const int piezoPin = 6;

bool isMelodyPlaying = false;

void setup() {
  pinMode(button1Pin, INPUT);
  pinMode(button2Pin, INPUT);
  pinMode(led1Pin, OUTPUT);
  pinMode(led2Pin, OUTPUT);
  pinMode(piezoPin, OUTPUT);
  Serial.begin(9600);
}

void loop() {

  if (digitalRead(button1Pin) == HIGH) {
    Serial.println("Button1Pressed");
    delay(100);
  }
  if (digitalRead(button2Pin) == HIGH) {
    Serial.println("Button2Pressed");
    delay(100);
  }
  
  if (Serial.available() > 0) {
    String command = Serial.readStringUntil('\n');
    if (command == "StartLEDs") {
      blinkLEDs();
    } else if (command == "PlayMelody") {
      playMelody();
    } else if (command == "StopMelody") {
      isMelodyPlaying = false;
      noTone(piezoPin);
    }
  }
}

void blinkLEDs() {
  int delayTime = 500;
  for (int i = 0; i < 10; i++) {
    digitalWrite(led1Pin, HIGH);
    digitalWrite(led2Pin, LOW);
    delay(delayTime);
    digitalWrite(led1Pin, LOW);
    digitalWrite(led2Pin, HIGH);
    delay(delayTime);
  }
  digitalWrite(led1Pin, LOW);
  digitalWrite(led2Pin, LOW);
}

void playMelody() {
  isMelodyPlaying = true;
  
  int melody[] = { NOTE_A4, NOTE_A4, NOTE_F4, NOTE_C5, NOTE_A4, NOTE_F4, NOTE_C5, NOTE_A4 };
  int noteDurations[] = { 500, 500, 500, 500, 500, 500, 500, 500 };

  for (int thisNote = 0; thisNote < 8 && isMelodyPlaying; thisNote++) {
    int noteDuration = noteDurations[thisNote];
    tone(piezoPin, melody[thisNote], noteDuration);
    delay(noteDuration * 1.3);
  }
  noTone(piezoPin);
}
