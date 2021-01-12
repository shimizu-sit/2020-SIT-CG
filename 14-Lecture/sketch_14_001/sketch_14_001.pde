int NUM = 1000;
BallMove[] ballmove = new BallMove[NUM];

void setup() {
  size(1920, 1040, P2D);
  frameRate(60);
  noStroke();
  for ( int i = 0; i < NUM; i++) {
    ballmove[i] = new BallMove();
    ballmove[i].location.set(width/2.0, height/2.0);
    ballmove[i].acceleration.set(random(-20, 20), random(-20, 20));
    ballmove[i].friction = 0.01;
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
}

void mousePressed() {
  for (int i = 0; i < NUM; i++) {
    ballmove[i].gravity.add(0.0, 1.0);
  }
}
