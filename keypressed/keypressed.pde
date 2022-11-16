void setup(){
  size(300,300);
}

void draw(){
  background(200);
  
  if(keyPressed){
    if(key == 'b'){
      fill(0);
    }
    else if(key == 'g'){
      fill(80);
    }
    else if(key == 32){
      fill(180);
    }
  }
  else{
    fill(255);
  }
  
  ellipse(mouseX, mouseY, 60,60);
  
}
