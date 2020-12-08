PVector location;
PVector velocity;
float radius;

void setup() {
  size(800, 800, P3D);
  frameRate(60);
  noStroke();
  fill(0, 142, 204, 80);
  ellipseMode(CENTER);
  radius = random(50, 100); 
  location = new PVector(random(radius, width - radius), random(radius, height - radius));
  velocity = new PVector(random(-10, 10), random(-10, 10));
}

void draw() {
  background(255);
  ellipse(location.x, location.y, radius*2, radius*2);

  location.add(velocity);

  if ( location.x - radius < 0 || location.x + radius > width) {
    velocity.x *= -1;
  }
  if ( location.y - radius < 0 || location.y + radius > height) {
    velocity.y *= -1;
  }
}
