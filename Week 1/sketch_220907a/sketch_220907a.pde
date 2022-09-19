//declare variables for our background
float r = 255;
float g = 255;
float b = 255;

void setup() {
  size(700, 700);
  rectMode(CENTER);
}

void draw() {
  background(r, g, b);
  
  //if mouse is on the right side if the screen, draw a red ellipse
  if (mouseX>width/2) {
    fill(255,0,0);
    ellipse(width/2, height/2, 100, 100);
  }
  
  //if previoud test is false, move to this next one
  //if mouse is in bottom side of the screen
  else if(mouseY > height/2) {
    fill(0);
    ellipse(width/2, height/2, 100, 100);
    
    else {
      fill(255);
      ellipse(width/2, height/2, 100, 100);
    }
  }
  void mousePressed() {
    r = random(0,255);
    g = random(0,255);
    b = random(0,255);
  }
