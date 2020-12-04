boolean sw = false;

void setup() {
  size(800, 800, P3D);
  noStroke();
  textSize(32);
  smooth();
}

void draw() {
  background(180);

  if (sw) {
    text("shade : on", 10, 40);
    lights();
  } else {
    text("shade : off", 10, 40);
  }

  translate(width/2, height/2, 0);
  sphere(width/3);
}

void keyPressed() {
  if (key == 's' || key =='S') {
    if (sw == true) { sw = false; }
    else if (sw == false) { sw = true; }
  }
}
