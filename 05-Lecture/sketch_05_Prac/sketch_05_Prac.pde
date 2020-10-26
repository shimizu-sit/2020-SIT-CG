float angle = 0.0;

void setup() {
  size(400, 400);
  frameRate(60);
  noStroke();
  rectMode(CENTER);
  colorMode(HSB, 360, 100, 100);
}

void draw() {
  background(0);

  pushMatrix();
  translate(width/2, height/2);
  rotate(angle);
  fill(angle*10%360, 80, 100);
  rect(0, 0, 100, 100);
  popMatrix();

  pushMatrix();
  translate(width/4, height/4);
  rotate(angle);
  fill(angle*10%360+45, 80, 100);
  rect(0, 0, 50, 50);
  popMatrix();

  pushMatrix();
  translate(3*width/4, height/4);
  rotate(angle);
  fill(angle*10%360+90, 80, 100);
  rect(0, 0, 50, 50);
  popMatrix();

  pushMatrix();
  translate(width/4, 3*height/4);
  rotate(angle);
  fill(angle*10%360+135, 80, 100);
  rect(0, 0, 50, 50);
  popMatrix();

  pushMatrix();
  translate(3*width/4, 3*height/4);
  rotate(angle);
  fill(angle*10%360+180, 80, 100);
  rect(0, 0, 50, 50);
  popMatrix();

  angle += 0.1;  
  saveFrame("frames/######.tif");
}