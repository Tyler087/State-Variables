
int state = 0;
float snowX = random(0,400);
float snowY = random(400,800);
PImage sun;
PImage moon;

void setup() {
  
  size(800, 800);
  imageMode(CENTER);
  sun = loadImage("sun.png");
  moon = loadImage("moon.png");
  
}


void draw() {
  background(255);
  drawQuadrants();
  changeSqaureColors();
}

void drawQuadrants() {
  stroke(0);
  line(width/2, 0, width/2, height );
  line(0, height/2, width, height/2);
}

void changeSqaureColors() {
  ellipseMode(CENTER);
  if (mouseX <= width/2 && mouseY <= height/2) {
    fill(255, 0, 0);
    rect(0, 0, width/2, height/2);
    
    image(sun, 200, 200, sun.width*0.3, sun.height*0.3);
    
    
  } else if (mouseX >= width/2 && mouseY <= height/2) {
    fill(0, 0, 255);
    rect(width/2, 0, width, height/2);
    fill(100,106,100);
    ellipse(600, 200, 200, 200);
    
    
  } else if (mouseX <= width/2 && mouseY >= height/2) {
    snowX = random(0,400);
    snowY = random(400,800);
    
    fill(0);
    rect(0, height/2, width/2, height);
    fill(255);
    ellipse(snowX, snowY, 5, 5);
    
    
  } else if (mouseX >= width/2 && mouseY >= height/2) {
      fill(100,106,100);
      rect(width/2, height/2, width, height);
  }
}