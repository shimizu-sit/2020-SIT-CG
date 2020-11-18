float angle = 0.0;
int col = 0;

void setup() {
  size(600, 600);
  frameRate(60);
  noStroke();
  rectMode(CENTER);
  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {
  background(0);
  fill(col%360, 100, 100, 80); 
  translate(width/2, height/2);
  rotate(angle);
  rect(0, 0, width/2, height/2);
  angle += 0.05;
  col += 3;
}
