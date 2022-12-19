//OUR GLOBE by Ashanti Sease
//For this project, I just wanted to show the different timezones through Processing.
//Keys 5-0 help show different timezones through zooming into certain countries. 
//And mousePressed helps in moving the globe around. 

//STARS from Johnny Dunn- Blinking Stars: https://openprocessing.org/sketch/165593
  
int stars = 50;
float xPosition = random(1000, 1000);
float yPosition = random(1000, 1000);
float xSpeed = random(-1,1);
float ySpeed = random(-1,1);
float opacity = 0;
float fade = 1;
//Earth images
boolean showImage = true;
PImage earth1;
PImage earth2;
PImage australia_Perth;
PImage africa_mogadishu;
PImage asia_bangkok;
PImage india_bengaluru;
PImage southamer_bogota;
PImage northamer_montre;

void timeZones() {
  int d = day();
  int mon = month();
  int y = year();
  int s = second();
  int m = minute();
  int h = hour(); 
  String t = (mon + "/" + d + "/" + y +" " +  h + ":" + m + ":" + s);
  text(t, 40, 40, 320); 
  textSize(36);
   
  fill(opacity);
  
  opacity = opacity + fade;
  
  if (opacity > 255 || opacity < 0){
    fade = - fade;
  }
}

void setup() {
  background(0);
  smooth();
  noStroke();
  size (700, 700);
  for (int i = 100; i <= stars; i += random(50, 100)) {
      ellipse(random(width), random(height), 3, 3);
  }
}

void keyPressed(){ 
  if (key == RIGHT) {
    noLoop();
  }
  if (key == '0') {
    australia_Perth = loadImage("1earth_zoom.png");
    imageMode(CENTER);
    image(australia_Perth, 600, 350, 400, 400); 
    delay(10);
    String au = ("A zone of time near Perth is AWT and its +12 hours ahead of us.");
    text(au, 40, 320); 
    textSize(36);
    textAlign(CENTER, BOTTOM);
    fill(255);
  }
   if (key == '9') {
    asia_bangkok = loadImage("asia_zoom.png");
    imageMode(CENTER);
    image(asia_bangkok, 500, 500, mouseX, mouseY); 
    delay(10);
    String as = ("A zone of time near Bangkok is ICT and its +11 hours ahead of us.");
    text(as, 40, 320); 
    textSize(36);
    textAlign(CENTER, BOTTOM);
    fill(255);
  } 
  if (key == '8') {
    india_bengaluru = loadImage("india_zoom.png");
    imageMode(CENTER);
    image(india_bengaluru, 500, 500, mouseX, mouseY); 
    String i = ("A zone of time near Bengaluru is IST and its +9 hours ahead of us.");
    textSize(36);
    text(i, 40, 320); 
    textAlign(CENTER, BOTTOM);
    fill(255);
  }  
  if (key == '7') {
    africa_mogadishu = loadImage("africa_zoom.png");
    imageMode(CENTER);
    image(africa_mogadishu, 500, 500, mouseX, mouseY); 
    delay(10);
    String a = ("A zone of time near Mogadishu is EAT and its +7  hours ahead of us.");
    text(a, 40, 320); 
    textSize(36);
    textAlign(CENTER, BOTTOM);
    fill(255);
  }
   if (key == '6') {
    southamer_bogota = loadImage("sa_zoom.pmg");
    imageMode(CENTER);
    image(southamer_bogota, 500, 500, 700, 700); 
    String s = ("A zone of time near Bogota is COT and its -1 hour behind of us.");
    text(s, 40, 40, 280, 320); 
    textSize(36);
    textAlign(CENTER, BOTTOM);
  }
   if (key == '5') {
    northamer_montre = loadImage("na_zoom.png");
    imageMode(CENTER);
    image(northamer_montre, 500, 500, 700, 700); 
    String n = ("A zone of time near Montreal is EST and its not ahead or behind us.");
    textSize(36);
    text(n, 40, 40, 280, 320); 
    textAlign(CENTER, BOTTOM);
    fill(255);
  } 
else { 
  
  earth1 = loadImage("1earth.png");
}
}
 
void draw(){
  timeZones();
   for (int i = 50; i <= stars; i += random(50, 100)); {
        ellipse(random(width), random(height), 3, 3);
    }
    earth1 = loadImage("1earth.png");
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
