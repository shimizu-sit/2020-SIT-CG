int NUM = 100;
BallMove[] ballmove = new BallMove[NUM];

void setup() {
  size(800, 600);
  frameRate(60);
  noStroke();
  for ( int i = 0; i < NUM; i++) {
    ballmove[i] = new BallMove();
    ballmove[i].location.set(width/2.0, height/2.0);
    ballmove[i].acceleration.set(random(-20, 20), random(-20, 20));
    ballmove[i].mass = random(1.0, 5.0);
  }
}

void draw() {
  background(0);
  fill(255);
  for ( int i = 0; i < NUM; i++) {
    ballmove[i].BallMoveUpdate();
    ballmove[i].BallMoveDraw();
    ballmove[i].bounceOffWalls();
  }
  saveFrame("frames/######.tif");
}

void mousePressed() {
  for( int i = 0; i < NUM; i++) {
    ballmove[i].location = new PVector(mouseX, mouseY);
  }
}

class BallMove {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
  float radius;

  BallMove() {
    radius = 4.0;
    mass = 0.0;
    location = new PVector(0.0, 0.0);
    velocity = new PVector(0.0, 0.0);
    acceleration = new PVector(0.0, 0.0);
  }

  void BallMoveUpdate() {
    velocity.add(acceleration);
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
