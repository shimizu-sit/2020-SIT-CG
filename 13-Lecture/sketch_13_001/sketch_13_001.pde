int NUM = 100;
PVector[] force = new PVector[NUM];         // 力
PVector[] acceleration = new PVector[NUM];  // 加速度
PVector[] location = new PVector[NUM];      // 位置
PVector[] velocity = new PVector[NUM];      // 速度

//重力はすべてに一定のため配列を使用しない
PVector gravity;       // 重力

float[] mass = new float[NUM];            // 質量
float[] friction = new float[NUM];        // 摩擦力

boolean fFlag = false;
boolean gFlag = false;

void setup() {
  size(1920, 1040);
  frameRate(60);
  noStroke();
  // 配列を使わない変数を初期化s
  gravity = new PVector(0.0, 0.0);  // 重力に初期値として(0.0, 0.0)を設定する
  
  // 配列を使う変数を初期化
  for ( int i = 0; i < NUM; i++) {
    location[i] = new PVector(0.0, 0.0);
    velocity[i] = new PVector(0.0, 0.0);
    acceleration[i] = new PVector(0.0, 0.0);
    force[i] = new PVector(random(-10.0, 10.0), random(-10.0, 10.0));
    mass[i] = random(1.0, 5.0);    // 質量は1.0に設定する
    friction[i] = 0.0;  // 摩擦力に初期値として0.0を設定する
  }
  textSize(32);
}

void draw() {
  background(0);
  fill(255);
  pushMatrix();
  translate(width/2, height/2);
  for ( int i = 0; i < NUM; i++) {
    acceleration[i].add(gravity);
    velocity[i].add(acceleration[i]);
    velocity[i].mult(1.0 - friction[i]);
    location[i].add(velocity[i]);
    acceleration[i].set(0, 0);
    ellipse(location[i].x, location[i].y, 20, 20);

    if ( location[i].x > width/2) {
      location[i].x = width/2;
      velocity[i].x *= -1;
    }
    if ( location[i].x < -width/2) {
      location[i].x = -width/2;
      velocity[i].x *= -1;
    }
    if ( location[i].y > height/2) {
      location[i].y = height/2;
      velocity[i].y *= -1;
    }
    if ( location[i].y < -height/2) {
      location[i].y = -height/2;
      velocity[i].y *= -1;
    }
  }
  popMatrix();

  if(fFlag){ text("friction ON", 50, 40); }
  if(gFlag){ text("gravity ON", 50, 80); }
}

void mousePressed() {
  for ( int i = 0; i < NUM; i++) { 
    acceleration[i] = force[i].div(mass[i]);
  }
}

void keyPressed() {
  for (int i = 0; i < NUM; i++) {
    if ( key == 'f' || key == 'F') {
      friction[i] = random(0.001, 0.01);
      fFlag = true;
    }
    if ( key == 'g' || key == 'G') {
      gravity.set(0.0, 1.0);
      gFlag = true;
    }
  }
}
