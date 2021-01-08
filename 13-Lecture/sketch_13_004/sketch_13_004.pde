DrawEllipse myCircle1;
DrawEllipse myCircle2;

void setup() {
  size(800, 600);
  smooth();
  myCircle1 = new DrawEllipse(200, new PVector(width/4, height/2));
  myCircle2 = new DrawEllipse(300, new PVector(3*width/4, height/2));
}

void draw() {
  myCircle1.ellipseDraw();
  myCircle2.ellipseDraw();
}

class DrawEllipse {
  float diameter;
  PVector location;
  
  DrawEllipse(float _diameter, PVector _location) {
    diameter = _diameter;
    location = _location;
  }
  
  void ellipseDraw() {
    ellipse(location.x, location.y, diameter, diameter);
  }
}
