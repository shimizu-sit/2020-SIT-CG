DrawEllipse myCircle;

void setup() {
  size(800, 600);
  smooth();
  myCircle = new DrawEllipse();
  myCircle.ellipseSetup();
}

void draw() {
  myCircle.ellipseDraw();
}

class DrawEllipse {
  float diameter;
  PVector location;
  
  void ellipseSetup() {
    diameter = 400;
    location = new PVector(width/2, height/2);
  }
  
  void ellipseDraw() {
    ellipse(location.x, location.y, diameter, diameter);
  }
}
