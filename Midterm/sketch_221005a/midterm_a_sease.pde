//STARS from Johnny Dunn- Blinking Stars: https://openprocessing.org/sketch/165593/
//Background stars
int stars = 100;
float xPosition = random(1000, 1000);
float yPosition = random(1000, 1000);
float xSpeed = random(-1,1);
float ySpeed = random(-1,1);
PImage earth1;
PImage earth2;


void setup() {
  background(0);
  smooth();
  noStroke();
  size (700, 700);
  for (int i = 200; i <= stars; i += random(100, 100)) {
      ellipse(random(width), random(height), 3, 3);
  }
  loop();
  
  earth1 = loadImage("1earth.png");
}
  //Used Processing Star Example: https://processing.org/examples/star.html
 

void draw() {
    for (int i = 300; i <= stars; i += random(100, 100)); {
        ellipse(random(width), random(height), 3, 3);
    }
    image(earth1, 0, 0);
} 

void keyPressed() {
  noLoop();
}
