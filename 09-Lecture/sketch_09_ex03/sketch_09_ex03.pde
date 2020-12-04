float angle = 0.0;
int lightFlag = 0;
float nx = 0.0, ny = 0.0, nz = -1.0;

void setup() {
  size(800, 800, P3D);
  frameRate(30);
  noStroke();
  textSize(32);
}

void draw() {
  background(0);
  
  text("nx = " + nf(nx, 1, 1), 10, 80);
  text("ny = " + nf(ny, 1, 1), 10, 120);
  
  if(lightFlag == 1) {
    text("light color = Red", 10, 40);
    directionalLight(255, 0, 0, nx, ny, nz);
  }
  else if (lightFlag == 2) {
    text("light color = Green", 10, 40);
    directionalLight(0, 255, 0, nx, ny, nz);
  }
  else if (lightFlag == 3) {
    text("light color = Blue", 10, 40);
    directionalLight(0, 0, 255, nx, ny, nz);
  }
  else {
    text("light color = Black", 10, 40);
    directionalLight(0, 0, 0, nx, ny, nz);
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
    
    case '0':
    lightFlag = 0;
    break;
  }
  
  if( keyCode == UP){
    ny -= 0.1;
  } else if( keyCode == DOWN) {
    ny += 0.1;
  } else if( keyCode == LEFT) {
    nx -= 0.1;
  } else if( keyCode == RIGHT) {
    nx += 0.1;
  }
}
