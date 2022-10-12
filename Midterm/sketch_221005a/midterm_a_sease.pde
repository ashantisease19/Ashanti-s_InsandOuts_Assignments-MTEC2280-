//STARS from Johnny Dunn- Blinking Stars: https://openprocessing.org/sketch/165593/

int stars = 100;
float xPosition = random(1000, 1000);
float yPosition = random(1000, 1000);
float xSpeed = random(-1,1);
float ySpeed = random(-1,1);



void setup() {
  background(0);
  smooth();
  noStroke();
  size (700, 700);
  for (int i = 200; i <= stars; i += random(100, 100)) {
      ellipse(random(width), random(height), 3, 3);
  }
  loop();
}
  //Used Processing Star Example: https://processing.org/examples/star.html
  
void globe(int x, int y, float radius) { 
  beginShape()
  for (int x = 
  fill(0, 0, 255);
  ellipse (0, 0, 75, 75);
}

void draw() {
    for (int i = 300; i <= stars; i += random(100, 100)); {
        ellipse(random(width), random(height), 3, 3);
    }
} 

void keyPressed() {
  noLoop();
}
