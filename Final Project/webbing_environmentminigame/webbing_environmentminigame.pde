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
  size(700, 700);
  background(255);
 
  String[] portList = Serial.list();
  printArray(portList);
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 9600);
  
}

void draw() {
   spiderWeb = loadImage("export.png");
   imageMode(CENTER);
   image(spiderWeb, 360, 360, 700, 600);
  
  if (myPort.available() > 0) {
    legSensorValue = myPort.read();
    val = myPort.read();
  }
  if (legSensorValue > 50) {
    warning = loadImage("TOO CLOSE! BACK UP!.png");
    spideySound2 = new SoundFile(this, "enderman2_.mp3");
    spideySound2.play();
  }
  
  if (keyPressed = true) {
     honeybee = loadImage("honeybee.png");
     imageMode(CENTER); 
     String a = ("Press the button :)");
     text(a, 40, 320); 
     textSize(96);
     textAlign(CENTER, BOTTOM);
     fill(0);
  }
     val = int(map(mouseX, 0, width, 0, 255));
     myPort.write(val);
   
  if (mousePressed == true){
    spideySound1 = new SoundFile(this, "enderman1_.mp3");
    spideySound1.play();
  }    
}
