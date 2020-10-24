int x = 0;
int y = 0;

void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  ellipse(x, y, 100, 100);
  x++;
  y++;
  //saveFrame("frames/######.tif");
}