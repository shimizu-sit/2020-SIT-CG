PVector force;         // 力
PVector acceleration;  // 加速度
PVector location;      // 位置
PVector velocity;      // 速度
PVector gravity;       // 重力
float mass;            // 質量
float friction;        // 摩擦力

void setup() {
  size(1920, 1080);
  frameRate(60);
  noStroke();
  // 位置，速度を初期化する
  location = new PVector(0.0, 0.0);
  velocity = new PVector(0.0, 0.0);
  acceleration = new PVector(0.0, 0.0);
  gravity = new PVector(0.0, 0.0);        // 重力に初期値として(0.0, 0.0)を設定する
  force = new PVector(12.0, 9.0);         // (12.0, 8.0)の力を加える
  mass = 1.0;                             // 質量は1.0に設定する
  friction = 0.0;                         // 摩擦力に初期値として0.0を設定する
  textSize(32);
}

void draw() {
  background(0);
  fill(255);
  acceleration.add(gravity);
  velocity.add(acceleration);
  velocity.mult(1.0 - friction);
  location.add(velocity);
  acceleration.set(0, 0);
  ellipse(location.x, location.y, 20, 20);

  text("velocity = " + nf(velocity.mag(), 2, 2), 50, 40);
  text("friction = " + friction, 50, 80);
  text("gravity = " + gravity, 50, 120);
}

void mousePressed() {
  acceleration = force.div(mass);
}

void keyPressed() {
  if( key == 'f' || key == 'F') {
    friction = 0.02;
  } else if ( key == 'g' || key == 'G') {
    gravity.set(0.0, 1.0);
  }
}
