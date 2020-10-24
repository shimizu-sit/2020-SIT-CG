void setup() {
  size(400, 400);
  noStroke();
  background(0);
}

void draw() {
  ellipse(random(400), random(400), 50, 50);
  //saveFrame("frames/######.tif");
}