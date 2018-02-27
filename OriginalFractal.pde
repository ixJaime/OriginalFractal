int a = (int)(Math.random()*255);
int b = (int)(Math.random()*255);
int c = (int)(Math.random()*255);

public void setup() {
  size (600, 600);
}

public void draw() {
  background(204, 229, 255);
  strokeWeight(3);
  Fractal(300, 600, 900);
}

public void Fractal(int x, int y, int rad) {
  ellipse(x, y, rad, rad);
  if(rad<=20) {
    noLoop();
  }
  else {
    strokeWeight(3);
     stroke(a, b, c);
    Fractal(x, y-(rad/3), rad/2);
    Fractal(x+(rad/3), y, rad/2);
    Fractal(x-(rad/3), y, rad/2);
  }
}