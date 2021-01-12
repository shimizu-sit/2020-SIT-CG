class BallMove {
  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector gravity;
  float mass;
  float friction;
  float radius;

  BallMove() {
    radius = 4.0;
    mass = 1.0;
    friction = 0.01;
    location = new PVector(0.0, 0.0);
    velocity = new PVector(0.0, 0.0);
    acceleration = new PVector(0.0, 0.0);
    gravity = new PVector(0.0, 0.0);
  }

  void BallMoveUpdate() {
    acceleration.add(gravity);
    velocity.add(acceleration);
    velocity.mult(1.0 - friction);
    location.add(velocity);
    acceleration.set(0, 0);
  }

  void BallMoveDraw() {
    ellipse(location.x, location.y, mass * radius * 2, mass * radius * 2);
  }

  void bounceOffWalls() {
    if ( location.x > width) {
      location.x = width;
      velocity.x *= -1;
    }
    if ( location.x < 0) {
      location.x = 0;
      velocity.x *= -1;
    }
    if ( location.y > height) {
      location.y = height;
      velocity.y *= -1;
    }
    if ( location.y < 0) {
      location.y = 0;
      velocity.y *= -1;
    }
  }
  
  void addForce(PVector force) {
    force.div(mass);
    acceleration.add(force);
  }
}