void setup() {
  size(400,400);
  noStroke();
  noLoop();
}

void draw() {
  //display(20,20,0,100,100);
  //display(90,45,200,0,100);
  //display(40,width-20,255,200,200);
  
  //for(int i=0; i<50; i++){
  // display(int(random(width)),int(random(width)),int(random(width)),int(random(width)),int(random(width))); 
  //}
}

void display(int w, int x, int r, int g, int b) {
  fill(r,g,b);
  ellipse(x,x,w,w);
}
