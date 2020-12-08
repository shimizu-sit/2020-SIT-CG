int NUM = 100;
PVector[] location = new PVector[NUM];
PVector[] velocity = new PVector[NUM];
float[] radius = new float[NUM];

void setup() {
  size(1920, 1080, P3D);
  frameRate(60);
  noStroke();
  fill(0, 142, 204, 80);
  ellipseMode(CENTER);
  for (int i = 0; i < NUM; i++) {
    radius[i] = random(30, 100);
    location[i] = new PVector(random(radius[i], width - radius[i]), random(radius[i], height - radius[i]));
    velocity[i] = new PVector(random(-10, 10), random(-10, 10));
  }
}

void draw() {
  background(255);
  for (int i = 0; i< NUM; i++) {
    ellipse(location[i].x, location[i].y, radius[i]*2, radius[i]*2);

    location[i].add(velocity[i]);

    if ( location[i].x - radius[i] < 0 || location[i].x + radius[i] > width) {
      velocity[i].x *= -1;
    }
    if ( location[i].y - radius[i] < 0 || location[i].y + radius[i] > height) {
      velocity[i].y *= -1;
    }
  }
}
