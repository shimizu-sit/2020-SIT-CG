int x, y; // 円の座標

void setup() {
  size(600, 600);
  noStroke();
  fill(0);
  x = width/2;
  y = height/2;
}

void draw() {
  background(255);

  if (keyPressed) {
    // ↑のとき
    if (keyCode == UP) {
      y -= 4;
    }
    // ↓のとき
    else if (keyCode == DOWN) {
      y += 4;
    }
    // ←のとき
    else if (keyCode == LEFT) {
      x -= 4;
    }
    // →のとき
    else if (keyCode == RIGHT) {
      x += 4;
    }
  }
  if (key == 'r' || key == 'R') { fill(255, 0, 0); }
  else if (key == 'g' || key == 'G') { fill(0, 255, 0); }
  else if (key == 'b' || key == 'B') { fill(0, 0, 255); }
  ellipse(x, y, 50, 50);
  saveFrame("frames/######.tif");
}
