float rx = 0.0;
float ry = 0.0;
float rz = 0.0;

void setup() {
  size(600, 600, P3D);
  noStroke();
}

void draw() {
  background(204);

  translate(width/2, height/2, 0);
  rotateX(rx);
  rotateY(ry);
  rotateZ(rz);
  scale(150);

  makeCube();
  
  rx += 0.01;
  ry += 0.02;
  rz += 0.05;
}

void makeCube() {
  beginShape(QUADS);
  fill(255, 0, 0);
  vertex(-1, 1, 1);
  vertex( 1, 1, 1);
  vertex( 1, -1, 1);
  vertex(-1, -1, 1);

  fill(0, 255, 0); 
  vertex( 1, 1, 1);
  vertex( 1, 1, -1);
  vertex( 1, -1, -1);
  vertex( 1, -1, 1);

  fill(0, 0, 255); 
  vertex( 1, 1, -1);
  vertex(-1, 1, -1);
  vertex(-1, -1, -1);
  vertex( 1, -1, -1);
  
  fill(255, 255, 0); 
  vertex(-1, 1, -1);
  vertex(-1, 1, 1);
  vertex(-1, -1, 1);
  vertex(-1, -1, -1);
  
  fill(0, 255, 255); 
  vertex(-1, 1, -1);
  vertex( 1, 1, -1);
  vertex( 1, 1, 1);
  vertex(-1, 1, 1);
  
  fill(255, 0, 255); 
  vertex(-1, -1, -1);
  vertex( 1, -1, -1);
  vertex( 1, -1, 1);
  vertex(-1, -1, 1);

  endShape();
}
