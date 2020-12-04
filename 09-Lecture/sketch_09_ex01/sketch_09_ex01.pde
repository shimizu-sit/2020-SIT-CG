float rx = 0.0;
float ry = 0.0;
boolean shade = false;

void setup() {
  size(800, 800, P3D);
  noStroke();
  frameRate(10);
  textSize(32);
}

void draw() {
  background(204);

  if (shade) {
    text("shade : on", 10, 40);
    lights();
  } else {
    text("shade : off", 10, 40);
  }

  translate(width/2, height/2, 0);
  rotateX(rx);
  rotateY(ry);

  box(width/3);

  rx += 0.1;
  ry += 0.1;
}

void keyPressed() {
  if (key == 's') {
    if (shade == true) { 
      shade = false;
    } else if (shade == false) { 
      shade = true;
    }
  }
}
