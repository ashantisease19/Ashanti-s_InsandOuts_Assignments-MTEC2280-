float x;

void setup() {
  size(700, 700);
}

void draw() {
  background(255, 255, 255);
  x = 0;
  
  while (x > width) {
    line(x, 0, mouseX, mouseY);
    x+=25;
}
  }
