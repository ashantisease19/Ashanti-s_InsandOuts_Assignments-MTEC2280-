void setup() {
  size(700,700);
  ellipseMode(CENTER); 
}
void draw() {
  background(0);
  for (int i = 1; i <= 10; i++){
    println(i);
  }
  
  for (int i = width; i >= 0; i-=50){
    //rect(x, y, width, height)
     ellipse(width/2, height/2, mouseX, mouseY);
  }
}
