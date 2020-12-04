boolean lightFlag = false;
float angle = 0.0;

void setup() {
  size(600, 600, P3D);
  frameRate(30);
  noStroke();
  textSize(32);
}

void draw() {
  background(0);
  
  text("shininess = " + lightFlag, 10, 40);
  ambientLight(10, 10, 10);
  
  pushMatrix();
  translate(width/2, height/2);
  
  lightSpecular(255, 255, 255);
  directionalLight(100, 100, 100, 0, 1, -1);
  specular(200, 200, 200);
  
  if(lightFlag == true) {
    shininess(1.0);
  } else {
    shininess(100.0);
  }
  
  rotateX(angle);
  rotateY(angle * 0.8);
  sphere(width/4);
  
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
