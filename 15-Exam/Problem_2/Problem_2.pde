size(600, 600);
background(240, 225, 169);
noStroke();

int diameter = 100;

color c1 = color(104, 174, 146);
color c2 = color(204, 196, 69);
color c3 = color(226, 117, 47);
color c4 = color(158, 64, 57);

for (int x = 0; x < 6; x++) {
  for (int y = 0; y < 6; y++) { 
    pushMatrix();
    translate(x * 100 + 50, y * 100 + 50);
    fill(c1);
    triangle(-50, 0, 0, -50, 0, 0);

    fill(c2);
    triangle(0, -50, 50, 0, 0, 0);

    fill(c3);
    triangle(0, 0, 50, 0, 0, 50);

    fill(c4);
    triangle(0, 0, 0, 50, -50, 0);
    popMatrix();
  }
}

save("Problem_2_image.png");
