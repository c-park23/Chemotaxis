class Bacterium {
  float x, y;
  int r, g, b, a;
  void move(Food aYum) {
    x += (aYum.x-x)*0.01;
    y += (aYum.y-y)*0.01;
    x += (float)((Math.random()*15))-7;
    y += (float)((Math.random()*15))-7;
  }
  void show() {
    fill(r, g, b, a);
    ellipse(x, y, 50, 50);
  }
  
  Bacterium() {
    r = 255;
    g = 30;
    b = 109;
    a = 255;
    x = width/2;
    y = height/2;
    fill(r, g, b, a);
  }
}
