int xPos = 0;
int yPos = 0;

size(600, 600);
background(255);
noStroke();
colorMode(HSB, 360, 100, 100);


for (int x=0; x<3; x++) {
  for (int y=0; y<3; y++) {
    translate(xPos, yPos);
    for (int i=0; i<10; i++) {
      fill(20*i, 80, 100);
      rect(0, 0, 200-20*i, 200-20*i);
    }
    yPos = 200;
  }
  yPos = 0;
  xPos = 200;
}