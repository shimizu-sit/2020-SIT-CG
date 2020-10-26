float angle = 0.0;

void setup() {
  size(400, 400);
  frameRate(60);
  noStroke();
  rectMode(CENTER);
}

void draw() {
  background(0);
  translate(width/2, height/2);
  rotate(angle);
  //rectMode(CENTER);
  rect(0, 0, 100, 100);
  angle += 0.1;
  //saveFrame("frames/######.tif");
}