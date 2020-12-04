boolean lightFlag = false;
float angle = 0.0;

void setup() {
  size(800, 800, P3D);
  frameRate(30);
  noStroke();
  textSize(32);
}

void draw() {
  background(204);
  
  text("light Flag = " + lightFlag, 10, 40);
  ambientLight(10, 10, 10);
  
  pushMatrix();
  translate(width/2, height/2);
  
  lightSpecular(255, 255, 255);
  
  directionalLight(255, 255, 255, -1, 1, -1);
  
  if(lightFlag == true) {
    specular(255, 255, 255);
  } else {
    specular(10, 10, 10);
  }
  
  rotateX(angle);
  rotateY(angle * 0.8);
  box(width/3);
  
  angle += 0.05;
  
  popMatrix();
}

void mousePressed() {
  if( lightFlag == true) {
    lightFlag = false;
  } else {
    lightFlag = true;
  }
}
