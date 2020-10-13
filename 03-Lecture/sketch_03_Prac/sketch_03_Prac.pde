size(800, 800);
background(255);
noStroke();
colorMode(HSB, 360, 100, 100);

int rectSize = 8;

for(int y=2; y<800; y+=10) {
  for(int x=2; x<800; x+=10) {
    if(x < 400 && y < 400) {
      fill(45, 80, 100);
    } else if(x < 400 && y >= 400) {
      fill(135, 80, 100);
    } else if(x >= 400 && y >= 400) {
      fill(225, 80, 100);
    } else {
      fill(315, 80, 100);
    }
    rect(x, y, rectSize, rectSize);
  }
}

save("sketch_03_Prac.png");
