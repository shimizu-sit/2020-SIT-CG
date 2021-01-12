int NUM = 1000;
BallMove[] ballmove = new BallMove[NUM];

void setup() {
  size(1920, 1040, P2D);
  frameRate(60);
  noStroke();
  for ( int i = 0; i < NUM; i++) {
    ballmove[i] = new BallMove();
    ballmove[i].location.set(width/2.0, height/2.0);
    float angle = random(PI * 2.0);
    float length = random(20);
    ballmove[i].acceleration.set(cos(angle) * length, sin(angle) * length);
    //ballmove[i].gravity.set(0.0, 0.1);
    ballmove[i].friction = 0.01;
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

void mouseReleased() {
  for (int i = 0; i < NUM; i++) {
    float angle = random(PI * 2.0);
    float length = random(20);
    PVector force = new PVector(cos(angle) * length, sin(angle) * length);
    ballmove[i].addForce(force);
  }
}

void keyPressed() {
  for (int i = 0; i < NUM; i++) {
    if(key == 'w' || keyCode == UP) ballmove[i].gravity.set(0.0, -1.0);
    if(key == 's' || keyCode == DOWN) ballmove[i].gravity.set(0.0, 1.0);
    if(key == 'a' || keyCode == LEFT) ballmove[i].gravity.set(-1.0, 0.0);
    if(key == 'd' || keyCode == RIGHT) ballmove[i].gravity.set(1.0, 0.0);
  }
}
