float x, y;
float xSpeed, ySpeed;

void setup() {
  size(400, 400);
  frameRate(60);
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

  if (x>width || x < 0) {
    xSpeed *= -1;
  }

  if (y>height || y < 0) {
    ySpeed *= -1;
  }
  //saveFrame("frames/######.tif");
}