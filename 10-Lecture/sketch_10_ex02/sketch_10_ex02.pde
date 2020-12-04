int kindFlag = 0;

void setup() {
  size(300, 300, P2D);
  textSize(22);
}

void draw() {
  background(205);

  switch(keyCode) {
  case '0':
    text("null", 10, 30);
    beginShape();
    vertex(100, 100);
    vertex(200, 100);
    vertex(200, 200);
    vertex(100, 200);
    endShape(CLOSE);
    break;

  case '1':
    text("POINTS", 10, 30);
    beginShape(POINTS);
    vertex(100, 100);
    vertex(200, 100);
    vertex(200, 200);
    vertex(100, 200);
    endShape();
    break;

  case '2':
    text("LINES", 10, 30);
    beginShape(LINES);
    vertex(100, 100);
    vertex(200, 100);
    vertex(200, 200);
    vertex(100, 200);
    endShape();
    break;

  case '3':
    text("TRIANGLES", 10, 30);
    beginShape(TRIANGLES);
    vertex(100, 100);
    vertex(70, 200);
    vertex(130, 200);
    vertex(170, 100);
    vertex(230, 100);
    vertex(200, 200);
    endShape();
    break;

  case '4':
    text("TRIANGLE_STRIP", 10, 30);
    beginShape(TRIANGLE_STRIP);
    vertex(100, 100);
    vertex(70, 200);
    vertex(130, 200);
    vertex(170, 100);
    vertex(230, 100);
    vertex(200, 200);
    endShape();
    break;

  case '5':
    text("TRIANGLE_FAN", 10, 30);
    beginShape(TRIANGLE_FAN); 
    vertex(150, 150);
    vertex(150, 70);
    vertex(230, 150);
    vertex(150, 230);
    vertex(70, 150);
    vertex(150, 150);
    endShape();
    break;

  case '6':
    text("QUADS", 10, 30);
    beginShape(QUADS);
    vertex(70, 100);
    vertex(130, 100);
    vertex(130, 200);
    vertex(70, 200);
    vertex(170, 100);
    vertex(230, 100);
    vertex(230, 200);
    vertex(170, 200);
    endShape();
    break;

  case '7':
    text("QUAD_STRIP", 10, 30);
    beginShape(QUAD_STRIP);
    vertex(70, 100);
    vertex(70, 200);
    vertex(130, 100);
    vertex(130, 200);
    vertex(170, 100);
    vertex(170, 200);
    vertex(230, 100);
    vertex(230, 200);
    endShape();
    break;
  }
}
