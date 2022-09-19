float r = 255;
float b = 255;
float g = 255;

void setup() {
size(700,700);

textSize(50);
String s = "Ashanti Sease, External";
fill(0);
text(s, 40, 40, 280, 320); 
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
    g = 255;
    b = 255; 
  }
} 
