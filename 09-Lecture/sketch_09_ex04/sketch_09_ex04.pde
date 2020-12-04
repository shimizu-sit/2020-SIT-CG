float angle = 0.0;

void setup() {
  size(800, 800, P3D);
  frameRate(30);
  noStroke();
  textSize(32);
}

void draw() {
  background(0);
  

  pointLight(0, 102, 126, 30, 40, 200);
  
  translate(width/2, height/2);
  rotateX(angle);
  rotateY(angle * 0.8);
  box(width/3);
  
  angle += 0.05;
}
