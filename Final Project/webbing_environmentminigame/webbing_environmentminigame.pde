////Webbing Environment for Spider-Gwen by Ashanti Sease
//For this project, I just wanted to create a little media for the spider.
//Creating a small web that will create warnings for when you are too close to the senses
//and help in creating the sound of the spider.
//The sound I'm going to use is from Minecraft because I really do not want to hear
//what spiders sound like. Sorry, professor :(

import processing.serial.*;
Serial myPort;
int val = 0;
int legSensorValue = 0;
PImage spiderWeb;
PImage honeybee;
PImage warning; 

import processing.sound.*;
SoundFile spideySound1;
SoundFile spideySound2;

void setup() {
  background(255);
  size(700, 700);
  
  String[] portList = Serial.list();
  printArray(portList);
  String portName = Serial.list()[];
  myPort = new Serial(this, portName, 9600);
  
}
void keyPressed() {
   if (key == 'A') {
     honeybee = loadImage();
     String a = ("Press the button :)");
     
     val = int(map(mouseX, 0, width, 0, 255));
     myPort.write(val);
   }
}
void draw() {
  spiderWeb = loadImage();
  if (myPort.avaliable() > 0) {
    legSensorValue = myPort.read();
    val = myPort.read();
  }
  if (legSensorValue > 50) {
    warning = loadImage();
    spideySound2 = new SoundFile(this, "");
    spideySound2.play();
  }
   
  if (mousePressed == true) {
    spideySound1 = new SoundFile(this, "");
    spideySound1.play();
  }    
}
