float angle = 0.0;

void setup() {
  size(400, 400);
  frameRate(10);
}

void draw() {
  background(0);
  rotate(angle);
  stroke(255);
  line(0, 0, 400, 0);
  rect(200, 50, 100, 50);
  angle += 0.05;
  //saveFrame("frames/######.tif");
}