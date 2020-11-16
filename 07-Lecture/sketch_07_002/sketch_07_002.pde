size(400, 400);

background(205);

for (int i=0; i<100; i++) {
  float x = random(width);
  float y = random(height);
  float rectWidth = random(10, 100);
  float rectHeight = random(10, 100);
  rect(x, y, rectWidth, rectHeight);
}
