void setup() {
  size(400, 400);
  noStroke();
  background(255);
}

void draw() {
  fill(random(255), random(255),random(255));
  ellipse(random(400), random(400), 40, 40);
  //saveFrame("frames/######.tif");
}