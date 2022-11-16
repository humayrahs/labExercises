void setup() {
  noLoop();
  textAlign(CENTER);
}

void draw() {
  background(0);
  
  //INITIALISE ARRAY
  int [] ranNum = new int[7];

  for (int i = 0; i<ranNum.length; i++) {
    ranNum[i] = int(random(10));
  }
  println(ranNum);
  
  //DISPLAY HOW MANY VALUES ARE BIGGER THAN 5
  text(findLarger5(ranNum), width/2, height/2);
}

int findLarger5(int [] numArray) {
  int noLarge5 = 0;

  for (int i = 0; i<numArray.length; i++) {
    if (numArray[i]>5) {
      noLarge5++;
    }
  }
  return noLarge5;
}
