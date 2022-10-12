void setup() {
  size(700,700);
  rectMode(CENTER); 
}

void draw() {
  background(255);
  for (int i = 1; i <= 10; i++){
    println(i);
  }
  
  for (int i = width; i >= 0; i-=50){
    //rect(x, y, width, height)
    rect(width/2, height/2, i , i);
  }
}

    
