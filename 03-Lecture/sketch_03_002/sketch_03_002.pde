size(800, 800);
float rectSize = 600;

for(int i=0; i<100; i++) {
  rect(100, 100, rectSize, rectSize);
  rectSize = rectSize / 1.2;
}

save("sketch_03_002.png");
