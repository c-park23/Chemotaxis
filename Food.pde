class Food {
  int x, y;
  int r, g, b, a;

  Food() {
    r = 100;
    g = 255;
    b = 200;
    a = 255;
    x = (int)(Math.random()*width);
    y = (int)(Math.random()*height);
    fill(r, g, b, a);
  }
  void show() {
    fill(r, g, b, a);
    ellipse(x, y, 50, 50);
  }
}
