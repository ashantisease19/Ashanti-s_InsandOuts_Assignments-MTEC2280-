//STARS from Johnny Dunn- Blinking Stars: https://openprocessing.org/sketch/165593/
//Background stars
int stars = 50;
float xPosition = random(1000, 1000);
float yPosition = random(1000, 1000);
float xSpeed = random(-1,1);
float ySpeed = random(-1,1);
//Earth images
PImage earth1;
PImage earth2;


void setup() {
  background(0);
  smooth();
  noStroke();
  size (700, 700);
  for (int i = 100; i <= stars; i += random(50, 100)) {
      ellipse(random(width), random(height), 3, 3);
  }
  loop();
  earth1 = loadImage("1earth.png");
  earth2 = loadImage("2earth.png");
}
 

void draw() {
    for (int i = 50; i <= stars; i += random(50, 100)); {
        ellipse(random(width), random(height), 3, 3);
    }
    imageMode(CENTER);
    image(earth1, 360, 360, 700, 600); 
} 

void keyPressed() {
  noLoop();
}
