float angle = 0.0;

void setup() {
  size(400, 400);
  frameRate(60);
  noStroke();
  rectMode(CENTER);
}

void draw() {
  background(0);

  pushMatrix();
  translate(width/2, height/2);
  rotate(angle);
  rect(0, 0, 100, 100);
  popMatrix();

  pushMatrix();
  translate(width/4, height/4);
  rotate(angle);
  rect(0, 0, 50, 50);
  popMatrix();

  pushMatrix();
  translate(3*width/4, height/4);
  rotate(angle);
  rect(0, 0, 50, 50);
  popMatrix();

  pushMatrix();
  translate(width/4, 3*height/4);
  rotate(angle);
  rect(0, 0, 50, 50);
  popMatrix();

  pushMatrix();
  translate(3*width/4, 3*height/4);
  rotate(angle);
  rect(0, 0, 50, 50);
  popMatrix();

  angle += 0.1;  
  saveFrame("frames/######.tif");
}