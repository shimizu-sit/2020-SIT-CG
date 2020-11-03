boolean drawKey = false;
char ch;

void setup() {
  size(400, 400);
  background(204);
  colorMode(HSB, 400, 100, 100, 100);
  noStroke();
  frameRate(10);
  textSize(80);
}

void draw() {
  textAlign(CENTER);
  if (drawKey) {
    fill(random(128,255), 80, 255, 90);
    text(ch, random(width), random(height));
  }
}

void keyPressed() {
  drawKey = true;
  ch = key;
}

void keyReleased() {
  drawKey = false;
}
