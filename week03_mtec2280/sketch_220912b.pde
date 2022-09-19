PImage hand;
PImage raccoon;
float opacity = 0;
float fade = 110;
float r = 255;
float g = 255;
float b = 255;
float fall = 0; 

String quote = "bb";

void setup() {
  size (500, 500);
  background(r, g, b);
  imageMode(CENTER);
  textAlign(CENTER);
  textSize(88);
  
  raccoon = loadImage("raccoon.png");
  hand = loadImage("hand.jpeg");
}

void draw() {
  background(255);
  
  fill(opacity);
  
  opacity = opacity + fade;
  
  if (opacity > 255 || opacity < 0){
    fade = -fade;
  }
  
  image(hand, width/2, height/2); 
  
  if (mousePressed) {
    background (r, g, b);
    r = random(0,255);
    b = random(0, 255);
    g = random(0, 225);
    image(hand, (width/2)-50, height/2, 500, 300);
    image(raccoon, width/2, fall);
 
    if (fall < height/2) {
      fall++; 
    }
    else{
      text(quote, width/2, height/2 - 50);
    }
  }
    else{
      fall = 0;
      text(":(", width/2, height/2 - 50);
  }
}
