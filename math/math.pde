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
  Buttons();
}

void Buttons() {
  fill(255);
  rect(x, y, w, h);
  rect(x+75, y, w, h);
  rect(x+150, y, w, h);
  rect(x+225, y, w, h);
  rect(x+300, y, w, h);
      fill(0);
  text("Addition",x+2,y+25);
  text("Subtraction",x+77,y+25);
  text("Multiplication",x+152,y+25);
  text("Division",x+227,y+25);
  text("Game",x+302,y+25);

  if (mousePressed) {
    if (mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h) {
      fill(0);
    }
    if (mouseX>x+75 && mouseX <x+75+w && mouseY>y && mouseY <y+h) {
      fill(0);
    }
    if (mouseX>x+150 && mouseX <x+150+w && mouseY>y && mouseY <y+h) {
      fill(0);
    }
    if (mouseX>x+225 && mouseX <x+225+w && mouseY>y && mouseY <y+h) {
      fill(0);
    }
    if (mouseX>x+300 && mouseX <x+300+w && mouseY>y && mouseY <y+h) {
      fill(0);
    }
  }
}