float x, y;
float xSpeed, ySpeed;

void setup() {
  size(400, 400);
  frameRate(30);
  noStroke();
  fill(0, 142, 204, 80);
  x = random(width);
  y = random(height);
  xSpeed = 10; //random(-10, 10);
  ySpeed = -8; //random(-10, 10);
}

void draw() {
  background(255);
  ellipse(x, y, 40, 40);
  x+=xSpeed;
  y+=ySpeed;

  if (x>width) {
    x = 0;
  }
  if (x < 0) {
    x = width;
  }
  if (y>height) {
    y = 0;
  }
  if( y < 0) {
    y=height;
  }
  //saveFrame("frames/######.tif");
}