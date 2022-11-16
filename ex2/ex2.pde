int radius = 40;
float x = -radius;
float speed = 3;

void setup() {
  size(240, 120);
  ellipseMode(RADIUS);
}

void draw() {
  background(0);
  x+=speed;
  if (x>width+radius) {
    x=-radius;
  }
  arc(x, 60, radius, radius, 0.52, 5.76);
}
