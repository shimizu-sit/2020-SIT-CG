int stepX;
int stepY;

void setup() {
  size(1600, 800);
  noStroke();
  colorMode(HSB, width, height, 100);
}

void draw() {
  stepX = mouseX + 2;
  stepY = mouseY + 2;
  for (int gridY = 0; gridY < height; gridY += stepY) {
    for (int gridX = 0; gridX < width; gridX += stepX) {
      fill(gridX, height - gridY, 80);
      rect(gridX, gridY, stepX, stepY);
    }
  }
}
