float[] x = new float[5];
float[] y = new float[5];
float[] rectWidth = new float[5];
float[] rectHeight = new float[5];
float[] xSpeed = new float[5];
float[] ySpeed = new float[5];

void setup() {
  size(400, 400);
  frameRate(30);
  noStroke();
  rectMode(CENTER);
  fill(0, 142, 204, 80);
  for ( int i = 0; i < 5; i++) {
    x[i] = random(width);
    y[i] = random(height);
    rectWidth[i] = random(10, 100);
    rectHeight[i] = random(10, 100);
    xSpeed[i] = random(-10, 10);
    ySpeed[i] = random(-10, 10);
  }
}

void draw() {
  background(205);
  for ( int i = 0; i < 5; i++) {
    rect(x[i], y[i], rectWidth[i], rectHeight[i]);
    x[i] += xSpeed[i];
    y[i] += ySpeed[i];

    if (x[i] > width || x[i] < 0) {
      xSpeed[i] *= -1;
    }
    if (y[i] > height || y[i] < 0) {
      ySpeed[i] *= -1;
    }
  }
}
