int NUM = 100;
BallMove[] ballmove = new BallMove[NUM];

void setup() {
  size(800, 600);
  frameRate(60);
  noStroke();
  for ( int i = 0; i < NUM; i++) {
    ballmove[i] = new BallMove();
    ballmove[i].location.set(width/2.0, 0);
    ballmove[i].acceleration.set(random(-20, 20), random(-20, 20));
    ballmove[i].gravity.set(0.0, 1.0);
    ballmove[i].friction = 0.01;
    ballmove[i].mass = random(1.0, 5.0);
  }
  textSize(32);
}

void draw() {
  background(0);
  fill(255);
  for ( int i = 0; i < NUM; i++) {
    ballmove[i].BallMoveUpdate();
    ballmove[i].BallMoveDraw();
    ballmove[i].bounceOffWalls();
  }
}


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
}
