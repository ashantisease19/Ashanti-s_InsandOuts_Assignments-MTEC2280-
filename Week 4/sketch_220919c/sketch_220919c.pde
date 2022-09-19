//int x = 50; // global variable (scope)

void setup() {
  size(700,700);
  rectMode(CENTER);
}

void draw(){
  background(255,220,200);
  int x = 50; // local variable
  
  while (x < width) {
    ellipse(x, height/2, 75, 75);
    x+=100; 
  }
  //x = 50;
  
  int y = 50;
  while( y < height/2) {
    rect(width/2, y, 50, 50);
    y+=75;
  }
}
