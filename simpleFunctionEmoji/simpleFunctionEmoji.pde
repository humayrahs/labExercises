void setup() {
  size(300, 300);
}

void draw() {
  background(255);
  if (millis()<2000) {
    emojiHappy();
  } else {
    emojiSad();
  }
}

void emojiHappy() {
  fill(#FCF514);
  ellipse(width/2, height/2, width, height); //face

  fill(0);
  ellipse(width/4, height/4, width*0.1, height*0.1);  //eyes
  ellipse(3*width/4, height/4, width*0.1, height*0.1);

  stroke(0);
  //strokeWeight(10);
  //line(0, height/2, width, height/2);  //mouth '_'
  arc(width/2, height/2, width, height/2, 0, PI);
}

void emojiSad() {
  fill(#FCF514);
  ellipse(width/2, height/2, width, height); //face

  fill(0);
  ellipse(width/4, height/4, width*0.1, height*0.1);  //eyes
  ellipse(3*width/4, height/4, width*0.1, height*0.1);

  stroke(0);
  //strokeWeight(10);
  //line(0, height/2, width, height/2);  //mouth '_'
  arc(width/2, height/2, width, height/2, PI, TWO_PI);
}
