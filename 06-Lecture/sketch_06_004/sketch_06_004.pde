int dragX, dragY, moveX, moveY;

void setup() {
  size(800, 800);
  noStroke();
  dragX = width/2;
  dragY = height/2;
  moveX = width/2;
  moveY = height/2;
}

void draw() {
  background(204);
  fill(129, 247, 243, 80); 
  ellipse(dragX, dragY, 100, 100);
  fill(0, 64, 255, 80);
  ellipse(moveX, moveY, 100, 100);
}

void mouseMoved() {
  moveX = mouseX;
  moveY = mouseY;
}

void mouseDragged() {
  dragX = mouseX;
  dragY = mouseY;
}
