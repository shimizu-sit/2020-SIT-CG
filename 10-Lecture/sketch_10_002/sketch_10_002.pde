PImage img;

void setup() {
  size(400, 400);
  img = loadImage("sample-1.jpg");
}

void draw() {
  background(0);
  image(img, 0, 0, 200, 200);
}
