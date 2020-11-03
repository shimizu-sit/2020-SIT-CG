color col = #000000;
float rectWidth = 100;
float rectHeight = 100;

void setup() {
  size(800, 800);
  noStroke();
  rectMode(CENTER);
  frameRate(30);
}

void draw() {
  background(255);
  if(mousePressed) {
    rectWidth = abs(pmouseX - mouseX) * 2;
    rectHeight = abs(pmouseY - mouseY) * 2;
    fill(col);
    rect(mouseX, mouseY, rectWidth, rectHeight);
  }
  saveFrame("frames/######.tif");
}

void keyReleased() {
  if (key == 'r' || key == 'R') col = #FF0000;
  if (key == 'g' || key == 'G') col = #00FF00;
  if (key == 'b' || key == 'B') col = #0000FF;
}