float r = 225;
float b = 225;
float g = 225;

void setup() {
  size(700,700);
}

void draw() {
  background (r, g, b);
  circle(mouseX, mouseY, 50);
  fill(0);
  
  if (mousePressed == true) {
    r = random(0,255);
    b = random(0,255);
    g = random(0,255);
    
  } else if (keyPressed == true) {
    fill(random(0,255));
  } else {
    r = 255;
    g = 225;
    b = 225; 
  }
} 
