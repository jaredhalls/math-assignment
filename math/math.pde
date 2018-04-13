float x = -1;
float y = 575;
float w = 75;
float h = 25;

void setup() {
  size(600, 600);
  background(0);
  stroke(0);
  noFill();
}

void draw() {
  background(0);
  rect(x, y, w, h);
  fill(255);
  if (mousePressed) {
    if (mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h) {
      println("The mouse is pressed and over the button");
      fill(0);
    }
  }
}