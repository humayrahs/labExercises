int diam, posX, posY, moveX, moveY;
void setup(){
  size(300,300);
  diam = 20;
  posX = width/2;
  moveY = 4;
}

void draw(){
  background(100);
  //ball
  ellipse(posX,posY,diam,diam);
  posY += moveY;
  if(posY<0){
    moveY=-moveY;
  }
  if(posY>height){
    if(abs(moveY) > 0){
      print(moveY);
      moveY = abs(moveY)-1;
    }
    moveY = -moveY;
  }
  //println(moveY);
  //println(abs(moveY));
}
