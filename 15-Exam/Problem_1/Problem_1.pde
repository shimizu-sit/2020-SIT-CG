size(600, 600);
noStroke();

for( int i = 0; i < 6; i++) {
  for( int j = 0; j < 6; j++) {
    fill(60 * i, 60 * j, 0);
    rect(100 * i, 100 * j, 100, 100);
  }
}

save("Problem_1_image.png");
