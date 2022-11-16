int x, y, d;
void setup() {
  frameRate(60);
  initCircle();
}

void draw() {
  background(100);
  
  drawCircle();
  moveCircle();
  checkCircle();
}

void initCircle() {
  d = 30;
  x = -d/2;
  y = height/2;
}

void drawCircle() {
  ellipse(x, y, d, d);
}

void moveCircle() {
  x++;
}

void checkCircle(){
  int dist; //circle off screen
  
  if(x+d/2>width){  //the minute a pixel is off screen
    dist = (x+d/2)-width;  //how much is off screen is saved
    ellipse(dist-d, y, d, d);  //and drawn on the other side (-d bc centre is x)
  }
  if(x-d/2>width){
    x=0;  //once the cirlce has dissapeared, restart
  }
}
