float[] x = new float[64];
float[] y = new float[64];
float[] vx = new float[64];
float[] vy = new float[64];
float[] visible = new float[64];
int j;

void setup(){
  size(600, 600);
  background(0);
  smooth();
  noStroke();
  for(int i=0; i<64; i++){
    x[i] = width/2;
    y[i] = height/2;
    vx[i] = 0;
    vy[i] = 0;
    visible[i] = 0;
  }
}

void draw(){
  background(0);
  for(int i=0; i<64; i++){
    if(visible[i] > 0){
      fill(255, 255, 255, visible[i]);
      ellipse(x[i], y[i], 50, 50);
    }
    x[i] = x[i] + vx[i] * 2;
    y[i] = y[i] + vy[i] * 2;
    visible[i] = visible[i] - 2;
  }
  saveFrame("frames/######.tif");
}

void mousePressed(){
  float deg;
  deg = random(2*PI);
  x[j] = width/2;
  y[j] = height/2;
  vx[j] = cos(deg);
  vy[j] = -sin(deg);
  visible[j] = 255;
  j = j + 1;
}
