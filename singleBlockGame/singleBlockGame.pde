int bPosX, bSize, score, plSize, plPosX, plPosY;
float bPosY, bSpeed, plSpeed;

void setup() {
  //Program Settings
  size(400, 600);
  textAlign(CENTER);
  rectMode(CENTER);
  //Initial Start
  initGame();
}

void draw() {
  background(200, 200, 250);
  drawPlayer();
  movePlayer();  //Allows left and right movement of the player
  drawBlock();   //Draws current pos of falling block(s)
  moveBlock();   //increases height of falling block(s) as well as acceleration
  checkFall();   //When block hits ground, new block appears
  checkCollision();
  text(score, width/2, height/2);  //Score display
}

void initBlock() {
  bPosX = int(random(width));
  bPosY = 0;
  bSize = int(random(10, 20));
  bSpeed = random(1);
}

void drawBlock() {
  fill(255);
  square(bPosX, bPosY, bSize);
}

void moveBlock() {
  bPosY += bSpeed;
  bSpeed+=0.1; //acceleration
}

void checkFall() {
  if (bPosY > height+(bPosX/2)) {
    initBlock();
    score++;
  }
}

void initPlayer() {
  plSize = 18;
  plPosX = width/2;
  plPosY = height-(plSize/2);
  plSpeed = 2;
}

void drawPlayer() {
  fill(0);
  square(plPosX, plPosY, plSize);
}

void movePlayer() {
  //fill(0);
  //square(plPosX, plPosY, plSize);
  if (keyPressed) {
    if (keyCode == LEFT) {
      plPosX -= plSpeed;
    } else if (keyCode == RIGHT) {
      plPosX += plSpeed;
    }
  }
}

void checkCollision() {
  float bLeft = bPosX-bSize;
  float bRight = bPosX+bSize;
  float bHead = bPosY+bSize;
  float plLeft = plPosX-plSize;
  float plRight = plPosX+plSize;
  float plHead = plPosY-plSize;

  if (bHead>=plHead && ((bLeft>=plLeft && bLeft<plRight) || (bRight>=plLeft && bRight<plRight))) {
    initGame();
  }
}

void initGame() {
  score = 0;
  initBlock();
  initPlayer();
}
