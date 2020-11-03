void setup() {
  size(400, 400);
  background(255);
  noStroke();
  rectMode(CENTER);
} 

void draw() {
}

void mousePressed() {
  fill(129, 247, 243, 80);
  rect(mouseX, mouseY, 80, 80);
}

void mouseReleased() {
  fill(0, 64, 255, 80);
  rect(mouseX, mouseY, 80, 80);
}
