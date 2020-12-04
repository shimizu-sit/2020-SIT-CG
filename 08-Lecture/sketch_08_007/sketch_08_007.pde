float rx = 0.0;
float ry = 0.0;

void setup() {
  size(800, 600, P3D);
  frameRate(10);
  textSize(20);
}

void draw() {
  background(204);

  text("rotate X = " + nf(rx, 2, 1), 10, 20);
  text("rotate Y = " + nf(ry, 2, 1), 10, 40);
  
  translate(width/2, height/2, 0);
  rotateX(rx);
  rotateY(ry);
  
  pushMatrix();
  translate(-200, 0, 0);
  box(100, 120, 40);
  popMatrix();
  
  pushMatrix();
  translate(200, 0, 0);
  sphere(100);
  popMatrix();
}

void keyPressed() {
  if (keyCode == UP) {
    rx -= 0.1;
  } else if (keyCode == DOWN) {
    rx += 0.1;
  } else if (keyCode == LEFT) {
    ry -= 0.1;
  } else if (keyCode == RIGHT) {
    ry += 0.1;
  }
}
