int speed; //picX;, picY;
float posX;
PImage faceIm;

void setup() {
  size(500, 900);
  //picX = 0;
  //picY = 0;
  speed = 10;
  posX = mouseX-width/2;
  faceIm = loadImage("face.jpg");
}

void draw() { 
  resetTint();
  drawImage(0);
  
  greenTint();
  drawImage(posX);
  
  blueTint();
  drawImage(-posX/3);
  
  redTint();
  drawImage(posX/2);
  
  moveImage();
}

void drawImage(float x) {
  image(faceIm, x, 0);
}

void moveImage(){
  if(mouseX>posX+speed){
    posX+=speed;
  }else if(mouseX<posX-speed){
    posX-=speed;
  }
}

//void pickTint(){
//  if (keyPressed) {
//    if (key == '1') {
//      greenTint();
//    } else if (key == '2') {
//      blueTint();
//    } else if (key == '3') {
//      redTint();
//    }
//  } else {
//    tint(255);
//  }
//}

void greenTint() {
  tint(0, 100, 35, 100);
}

void blueTint() {
  tint(35, 0, 100, 100);
}

void redTint() {
  tint(100, 35, 0, 100);
}

void resetTint(){
  tint(255);
}
