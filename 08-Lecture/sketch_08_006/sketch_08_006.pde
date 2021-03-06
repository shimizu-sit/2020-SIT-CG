int ures = 5;
int vres = 5;

void setup() {
  size(800, 800, P3D);
  textSize(20);
}

void draw() {
  background(204);
  if (ures < 3) ures = 3;
  if (vres < 2) vres = 2;
  text("ures = " + ures, 10, 20);
  text("vres = " + vres, 10, 40);
  translate(width/2, height/2, 0);

  sphereDetail(ures, vres);
  sphere(width/3);
}

void keyPressed() {
  if (keyCode == UP) {
    ures += 1;
  } else if (keyCode == DOWN) {
    ures -= 1;
  } else if (keyCode == LEFT) {
    vres += 1;
  } else if (keyCode == RIGHT) {
    vres -= 1;
  }
}
