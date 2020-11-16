size(600, 600);
noStroke();
background(205);
colorMode(HSB, 600, 100, 100, 100);

for (int i=0; i<10; i++) {
  float x = random(width);
  float y = random(height);
  fill( (x + y)/2, 80, 100, 80);
  float rectWidth = random(50, 300);
  float rectHeight = random(50, 300);
  rect(x, y, rectWidth, rectHeight);
}
