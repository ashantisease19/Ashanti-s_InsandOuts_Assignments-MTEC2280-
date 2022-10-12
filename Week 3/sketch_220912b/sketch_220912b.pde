PImage hand;

float opacity = 0;
float fade = 1;

void setup() {
  size (500, 500);
  background(255);
  imageMode(CENTER);
  textAlign(CENTER);
  textSize(88);
  
  hand = loadImage("hand.jpeg");
}

void draw() {
  background(255);
  
  fill(opacity);
  
  opacity = opacity + fade;
  
  if (opacity > 255 || opacity < 0){
    fade = - fade;
  }
  
  image(hand, width/2, height/2);
}
