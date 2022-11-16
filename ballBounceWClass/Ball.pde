class Ball {
  //Features
  float posX, posY, rad, speed;

  //Constructor
  Ball(float radius, float s, float x, float y) {
    rad=radius;
    speed = s;
    posX = x;
    posY = y;
  }

  //Behaviours
  void drawB() {
    ellipse(posX, posY, rad*2, rad*2);
  }

  void moveX() {
    posX+=speed;
  }

  void moveY() {
    posY+=speed;
  }

  void checkX() {
    float edgeR = posX+rad;
    float edgeL = posX-rad;
    if (edgeR>width || edgeL<0) {
      speed = -speed;
    }
  }

  void checkY() {
    float edgeU = posY-rad;
    float edgeD = posY+rad;
    if (edgeU<0 || edgeD>height) {
      speed = -speed;
    }
  }
}
