Bacterium[] bacteria;
Food[] yum;
void setup() {
  size(600, 600);
  bacteria = new Bacterium[8];
  for (int i = 0; i<bacteria.length; i++) {
    Bacterium aB = new Bacterium();
    bacteria[i] = aB;
  }
  yum = new Food[1];
  for (int i = 0; i<yum.length; i++) {
    yum[i] = new Food();
  }
}
void draw() {
  background(255);
  for (int i=0; i<bacteria.length; i++) {
    bacteria[i].move(yum[0]);
    bacteria[i].show();
  }
  yum[0].show();
}
void mouseClicked() {
   yum[0].x = mouseX;
   yum[0].y = mouseY;
  for (int i=0; i<yum.length; i++) {
    yum[i].show();
  }
}
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
