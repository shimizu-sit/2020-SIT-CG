PImage tex;

void setup() {
  size(320, 240, P2D);
  tex = loadImage("sample-2.jpg");
  textureMode(NORMAL);
}

void draw() {
  beginShape(QUADS);
  texture(tex);
  vertex(0, 0, 0, 0);
  vertex(0, 200, 0, 1);
  vertex(200, 200, 1, 1);
  vertex(200, 0, 1, 0);
  endShape();
}
