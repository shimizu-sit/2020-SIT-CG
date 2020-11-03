
void setup() {
  size(800, 800);
  noStroke();
  frameRate(10);
  textSize(80);
}

void draw() {
  background(204);
  textAlign(CENTER);
  if (keyPressed) {
    fill(random(128, 255), 80, 255, 90);
    text(key, random(width), random(height));
  }
}
