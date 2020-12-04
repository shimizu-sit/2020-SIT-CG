float rx = 0.0;
float ry = 0.0;
float rz = 0.0;

PImage dice1;
PImage dice2;
PImage dice3;
PImage dice4;
PImage dice5;
PImage dice6;

void setup() {
  size(640, 480, P3D);
  noStroke();
  
  dice1 = loadImage("dice1.png");
  dice2 = loadImage("dice2.png");
  dice3 = loadImage("dice3.png");
  dice4 = loadImage("dice4.png");
  dice5 = loadImage("dice5.png");
  dice6 = loadImage("dice6.png");
  textureMode(NORMAL);
}

void draw() {
  background(204);

  translate(width/2, height/2, 0);
  rotateX(rx);
  rotateY(ry);
  rotateZ(rz);
  scale(100);

  rx += 0.01;
  ry += 0.02;
  rz += 0.05;
  
  makeTexutredCube(dice1, dice2, dice3, dice4, dice5, dice6);
}

void makeTexutredCube(PImage dice1, PImage dice2, PImage dice3, PImage dice4, PImage dice5, PImage dice6) {
  // 前面
  beginShape(QUADS);
  texture(dice1);
  vertex(-1, -1, 1, 0, 0); // ①-A
  vertex(-1, 1, 1, 0, 1);  // ②-B
  vertex(1, 1, 1, 1, 1);   // ③-C
  vertex(1, -1, 1, 1, 0);  // ④-D
  endShape();

  // 後面
  beginShape(QUADS);    
  texture(dice6);
  vertex(1, -1, -1, 0, 0);  // ⑧-A
  vertex(1, 1, -1, 1, 0);   // ⑦-D
  vertex(-1, 1, -1, 1, 1);  // ⑥-C
  vertex(-1, -1, -1, 0, 1); // ⑤-B
  endShape();

  // 上面
  beginShape(QUADS);    
  texture(dice2);
  vertex(-1, -1, 1, 0, 1);  // ①-B
  vertex(1, -1, 1, 1, 1);   // ④-C
  vertex(1, -1, -1, 1, 0);  // ⑧-D
  vertex(-1, -1, -1, 0, 0); // ⑤-A
  endShape();

  // 底面
  beginShape(QUADS);    
  texture(dice5);
  vertex(-1, 1, 1, 0, 0);   // ②-A
  vertex(-1, 1, -1, 0, 1);  // ⑥-D
  vertex(1, 1, -1, 1, 1);   // ⑦-C
  vertex(1, 1, 1, 1, 0);    // ③-B
  endShape();

  // 左面
  beginShape(QUADS);    
  texture(dice3);
  vertex(-1, -1, -1, 0, 0); // ⑤-A
  vertex(-1, 1, -1, 0, 1);  // ⑥-D
  vertex(-1, 1, 1, 1, 1);   // ②-C
  vertex(-1, -1, 1, 1, 0);  // ①-B
  endShape();

  // 右面
  beginShape(QUADS);    
  texture(dice4);
  vertex(1, -1, 1, 0, 0);  // ④-A
  vertex(1, 1, 1, 0, 1);   // ③-B
  vertex(1, 1, -1, 1, 1);  // ⑦-C
  vertex(1, -1, -1, 1, 0); // ⑧-D
  endShape();
}
