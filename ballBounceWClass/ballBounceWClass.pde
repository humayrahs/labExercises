//float posX, posY;

//Ball x = new Ball(30, 1, width/2, height/2);
//Ball y = new Ball(30, 1, width/2, height/2);

Ball x, y;

void setup() {
  size(300,300);
  x = new Ball(30, 3, width/2, height/2);
  y = new Ball(30, 3, width/2, height/2);

}

void draw() {
  background(100);
  
  x.drawB();
  x.moveX();
  y.drawB();
  y.moveY();
  
  x.checkX();
  y.checkY();
}
