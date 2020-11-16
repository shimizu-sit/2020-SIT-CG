int NUM = 100;
float[] x = new float[NUM];
float[] y = new float[NUM];
float[] ringSize = new float[NUM];
int clickNum = 0;

void setup() {
  size(600, 600);
  frameRate(60);
  noFill();
  smooth();
  stroke(0, 0, 255);
  for(int i = 0; i < NUM; i++) {
    x[i] = 0;
    y[i] = 0;
    ringSize[i] = 0;
  }
}

void draw() {
  background(255);
  for(int i = 0; i < NUM ; i++) {
    if(ringSize[i] > 0) {
      ringSize[i] += 4;
    }
    ellipse(x[i], y[i], ringSize[i], ringSize[i]);
  }
}

void mousePressed() {
  ringSize[clickNum] = 1;
  x[clickNum] = mouseX;
  y[clickNum] = mouseY;
  
  clickNum++;
  if(clickNum >= NUM) {
    clickNum = 0;
  }
}
