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
