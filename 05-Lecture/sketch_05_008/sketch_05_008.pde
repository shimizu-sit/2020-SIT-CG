float angle = 0.0;

void setup() {
  size(400, 400);
  frameRate(60);
  noStroke();
}

void draw() {
  background(0);
  translate(width/2, height/2);
  rotate(angle);
  rect(0, 0, 100, 100);
  angle += 0.1;
  //saveFrame("frames/######.tif");
}