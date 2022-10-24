//STARS from Johnny Dunn- Blinking Stars: https://openprocessing.org/sketch/165593/
//Background stars
//dataType[] nameOfArray = new dataType[numberofPositions];
//dataType[] nameOfArray= {};

//String[] timeAcronym= {""};
int stars = 50;
float xPosition = random(1000, 1000);
float yPosition = random(1000, 1000);
float xSpeed = random(-1,1);
float ySpeed = random(-1,1);
//Earth images
PImage earth1;
PImage earth2;
PImage australia_Perth;

void timeZones() {
  int d = day();
  int mon = month();
  int y = year();
  int s = second();
  int m = minute();
  int h = hour(); 
  println(mon + "/" + d + "/" + y +" " +  h + ":" + m + ":" + s);
}

void setup() {
  background(0);
  smooth();
  noStroke();
  size (700, 700);
  for (int i = 100; i <= stars; i += random(50, 100)) {
      ellipse(random(width), random(height), 3, 3);
  }
  earth1 = loadImage("1earth.png");
}
 
void draw(){
    for (int i = 50; i <= stars; i += random(50, 100)); {
        ellipse(random(width), random(height), 3, 3);
    }
    imageMode(CENTER);
    image(earth1, 360, 360, 700, 600); 
  if (mousePressed == true) {
    earth2 = loadImage("2earth.png");
    imageMode(CENTER);
    image(earth2, 360, 360, 700, 600);
  } else {
    image(earth1, 360, 360, 700, 600); 
  }
} 

void keyPressed(){
  if (key == '0') {
    australia_Perth = loadImage("1earth_zoom.png");
    imageMode(CENTER);
    image(australia_Perth, 500, 500, 700, 700); 
    println("A zone of time near Australia is AWST(Australian Western Standard Time) and its +12 hours ahead of us.");
  }
  // if (key == '9') {
  //   = loadImage("1earth_zoom.png");
  //  imageMode(CENTER);
  //  image(, 500, 500, 700, 700); 
  //  println("A zone of time near  is  () and its  hours ahead of us.");
  //} if (key == '8') {
  //   = loadImage("1earth_zoom.png");
  //  imageMode(CENTER);
  //  image(, 500, 500, 700, 700); 
  //  println("A zone of time near  is  () and its  hours ahead of us.");
  //}  if (key == '7') {
  //   = loadImage("1earth_zoom.png");
  //  imageMode(CENTER);
  //  image(, 500, 500, 700, 700); 
  //  println("A zone of time near  is  () and its  hours ahead of us.");
  //}
  // if (key == '6') {
  //   = loadImage("1earth_zoom.png");
  //  imageMode(CENTER);
  //  image(, 500, 500, 700, 700); 
  //  println("A zone of time near  is  () and its  hours ahead of us.");
  //}
  // if (key == '5') {
  //   = loadImage("1earth_zoom.png");
  //  imageMode(CENTER);
  //  image(, 500, 500, 700, 700); 
  //  println("A zone of time near  is  () and its  hours ahead of us.");
  //}
}
