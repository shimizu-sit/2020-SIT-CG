int gray = 0;

void setup() {
  size(400, 400);
  rectMode(CENTER);
  noStroke();
}

void draw() {
  fill(gray);
  if ( gray > 255) {
    gray = 0;
  }
  rect(width/2, height/2, 200, 200);
}

void mousePressed() {
  gray += 20;
}
