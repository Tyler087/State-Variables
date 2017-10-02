
int state = 0;
float snowX = random(0,400);
float snowY = random(400,800);
PImage sun;
PImage moon;
PImage snowflake;
PImage hockeystick;


void setup() {
  
  size(800, 800);
  imageMode(CENTER);
  sun = loadImage("sun.png");
  moon = loadImage("moon.png");
  snowflake = loadImage("snowflake.png");
  hockeystick = loadImage("hockeystick.png");
}


void draw() {
  background(255);
  drawQuadrants();
  changeSqaureColors();
  determineState();
  drawForTheState();
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
    image(sun, 200, 200, sun.width*0.4, sun.height*0.4);
    
    
  } else if (mouseX >= width/2 && mouseY <= height/2) {
    fill(0, 0, 255);
    rect(width/2, 0, width, height/2);
    fill(100,106,100);
    image(moon, 600, 200, moon.width*0.3, moon.height*0.3);
    
    
  } else if (mouseX <= width/2 && mouseY >= height/2) {
    snowX = random(10,390);
    snowY = random(410,790);
    
    fill(0);
    rect(0, height/2, width/2, height);
    fill(255);
    image(snowflake, snowX, snowY, snowflake.width*0.1, snowflake.height*0.1);
    
    
  } else if (mouseX >= width/2 && mouseY >= height/2) {
      fill(random(0,255), 0, 255);
      rect(width/2, height/2, width, height);
      image(hockeystick, 600, 600, hockeystick.width*0.3, hockeystick.height*0.3);
  }
}

void determineState() {
 if  (mouseX <= width/2 && mouseY <= height/2 && mousePressed){
   state = 1;
 }
   
 else if (mouseX >= width/2 && mouseY <= height/2 && mousePressed){
   state = 2;
 }
   
 else if (mouseX <= width/2 && mouseY >= height/2 && mousePressed){
   state = 3;
 }
   
 else if (mouseX >= width/2 && mouseY >= height/2 && mousePressed){
   state = 4;
 }
}

void drawForTheState() {
 imageMode(CENTER);
 if (state == 1){
  float sunLocation = constrain(mouseX, 200, 625);
  background(255,0,0);
  image(sun, 400, sunLocation, sun. width*0.7, sun.height*0.7); 
 }
 
 else if (state == 2){
  float moonLocation = constrain(mouseY, 175,625);
  background(0, 0, 255);
  image(moon, moonLocation, height/2, moon.width*0.5, moon.height*0.5);
 }
 
 else if (state == 3){
  background(0);
  image(snowflake, random(10,790), random(10,790), snowflake.width*0.2, snowflake.height*0.2);
 }
 
 else if (state == 4){
  background(200,mouseY,mouseX); 
  image(hockeystick, mouseX, mouseY, hockeystick.width*0.4, hockeystick.height*0.4);
 }
}

void keyPressed(){
  if (key == 'r'){
   state = 0;
  }  
}