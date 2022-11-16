float c1, c2, c3;

void setup(){
  size(300,300);
  background(0);
}

void draw(){
  c1 = map(mouseX, 0, 255, 0, 255);
  c2 =  map(mouseY, 0, 255, 0, 255);
  c3 = map(mouseX+mouseY, 0, 255, 0, 255);
  
  strokeWeight(5);
  stroke(c1, c2, c3);
  //println(c1, c2);
  line(mouseX, 0, mouseX, height);
}
