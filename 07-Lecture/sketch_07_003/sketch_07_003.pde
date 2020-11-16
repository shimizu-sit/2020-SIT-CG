float x1, y1, x2, y2, x3, y3, x4, y4, x5, y5;
float rW1, rH1, rW2, rH2, rW3, rH3, rW4, rH4, rW5, rH5;
float xS1, yS1, xS2, yS2, xS3, yS3, xS4, yS4, xS5, yS5;

void setup() {
  size(400, 400);
  frameRate(30);
  noStroke();
  rectMode(CENTER);
  fill(0, 142, 204, 80);
  x1 = random(width);
  y1 = random(height);
  x2 = random(width);
  y2 = random(height);
  x3 = random(width);
  y3 = random(height);
  x4 = random(width);
  y4 = random(height);
  x5 = random(width);
  y5 = random(height);
  rW1 = random(10, 100);
  rH1 = random(10, 100);
  rW2 = random(10, 100);
  rH2 = random(10, 100);
  rW3 = random(10, 100);
  rH3 = random(10, 100);
  rW4 = random(10, 100);
  rH4 = random(10, 100);
  rW5 = random(10, 100);
  rH5 = random(10, 100);
  xS1 = random(-10, 10);
  yS1 = random(-10, 10);
  xS2 = random(-10, 10);
  yS2 = random(-10, 10);
  xS3 = random(-10, 10);
  yS3 = random(-10, 10);
  xS4 = random(-10, 10);
  yS4 = random(-10, 10);
  xS5 = random(-10, 10);
  yS5 = random(-10, 10);
}

void draw() {
  background(255);
  rect(x1, y1, rW1, rH1);
  x1 += xS1;
  y1 += yS1;

  if (x1 > width || x1 < 0) {
    xS1 *= -1;
  }
  if (y1 > height || y1 < 0) {
    yS1 *= -1;
  }
  
  rect(x2, y2, rW2, rH2);
  x2 += xS2;
  y2 += yS2;

  if (x2 > width || x2 < 0) {
    xS2 *= -1;
  }
  if (y2 > height || y2 < 0) {
    yS2 *= -1;
  }
  
  rect(x3, y3, rW3, rH3);
  x3 += xS3;
  y3 += yS3;

  if (x3 > width || x3 < 0) {
    xS3 *= -1;
  }
  if (y3 > height || y3 < 0) {
    yS3 *= -1;
  }
  
  rect(x4, y4, rW4, rH4);
  x4 += xS4;
  y4 += yS4;

  if (x4 > width || x4 < 0) {
    xS4 *= -1;
  }
  if (y4 > height || y4 < 0) {
    yS4 *= -1;
  }
  
  rect(x5, y5, rW5, rH5);
  x5 += xS5;
  y5 += yS5;

  if (x5 > width || x5 < 0) {
    xS5 *= -1;
  }
  if (y5 > height || y5 < 0) {
    yS5 *= -1;
  }
}
