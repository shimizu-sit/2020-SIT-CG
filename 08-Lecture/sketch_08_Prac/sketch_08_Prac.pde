void setup() {
  size(600, 600, P3D);
  frameRate(60);
  noStroke();
  rectMode(CENTER);
}

void draw() {
  background(0);
  translate(width/2, height/2);
  rotateX(mouseX / 200.0);
  rotateY(mouseY / 100.0);
  rotateZ((mouseX + mouseY) / 300.0);
  rect(0, 0, width/2, height/2);
}
