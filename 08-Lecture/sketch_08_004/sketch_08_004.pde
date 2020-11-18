float angle = 0.0;
int hue = int(random(360));
int bri = 0;

void setup() {
  size(600, 600, P3D);
  frameRate(60);
  noStroke();
  rectMode(CENTER);
  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {
  background(0);
  fill(hue, 100, bri%100, 80);
  translate(width/2, height/2);
  rotateZ(angle);
  rect(0, 0, width/2, height/2);
  angle += 0.05;
  bri += 1;
}
