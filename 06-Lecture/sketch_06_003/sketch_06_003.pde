float diameter = 0.0;

void setup() {
  size(800, 800);
  colorMode(HSB, 800, 100, 100, 100);
  background(204);
  frameRate(30);
  noStroke();
  smooth();
}

void draw() {
  if (mousePressed) {
    fill((mouseX+mouseY)/2, 80, 100, 80);
    diameter = abs(pmouseX - mouseX);
    ellipse(mouseX, mouseY, diameter, diameter);
  }
}
