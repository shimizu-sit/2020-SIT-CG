PVector force;
PVector acceleration;
PVector location;
PVector velocity;
float mass;

void setup() {
  size(800, 600);
  frameRate(60);
  noStroke();
  location = new PVector(0.0, 0.0);
  velocity = new PVector(0.0, 0.0);
  force = new PVector(4.0, 3.0);
  acceleration = new PVector(0.0, 0.0);
  mass = 1.0;
  textSize(32);
}

void draw() {
  background(0);
  fill(255);
  velocity.add(acceleration);
  location.add(velocity);
  acceleration.set(0, 0);
  ellipse(location.x, location.y, 20, 20);
}

void mousePressed() {
  acceleration = force.div(mass);
}
