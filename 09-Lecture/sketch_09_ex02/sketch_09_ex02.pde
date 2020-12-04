float angle = 0.0;
int lightFlag = 0;

void setup() {
  size(800, 800, P3D);
  frameRate(30);
  noStroke();
  textSize(32);
}

void draw() {
  background(0);
  
  if(lightFlag == 1) {
    text("light color = Red", 10, 40);
    ambientLight(255, 0, 0);
  }
  else if (lightFlag == 2) {
    text("light color = Green", 10, 40);
    ambientLight(0, 255, 0);
  }
  else if (lightFlag == 3) {
    text("light color = Blue", 10, 40);
    ambientLight(0, 0, 255);
  }
  else {
    text("light color = Black", 10, 40);
    ambientLight(0, 0, 0);
  } 
  
  translate(width/2, height/2);
  rotateX(angle);
  rotateY(angle * 0.8);
  box(width/3);
  
  angle += 0.05;
}

void keyPressed() {
  switch(key) {
    case 'r':
    lightFlag = 1;
    break;
    
    case 'g':
    lightFlag = 2;
    break;
    
    case 'b':
    lightFlag = 3;
    break;
    
   default:
   lightFlag = 0;
   break;
  }
}
