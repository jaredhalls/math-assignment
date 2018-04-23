String ans = "";
int mathType;
int add1 = int(random(1, 10));
int add2 = int(random(1, 10));
int addvar;

void setup() {
  size(600, 600);
  background(0);
  stroke(0);
  noFill();
}

void draw() {
  background(0);
  buttons();
}

void buttons() {
  fill(255);
  rect(-1, 575, 75, 25);
  rect(-1+75, 575, 75, 25);
  rect(-1+150, 575, 75, 25);
  fill(0);
  text("Addition", -1+2, 575+25);
  text("Subtraction", -1+77, 575+25);
  text("Game", -1+152, 575+25);
  if (mousePressed) {
    if (mouseX > -1 && mouseX < -1+75 && mouseY > 575 && mouseY < 575+25) {
      fill(0);
      mathType = 1;
    } else if (mouseX > -1+75 && mouseX < -1+75+75 && mouseY > 575 && mouseY < 575+25) {
      fill(0);
      mathType = 2;
    } else if (mouseX > -1+150 && mouseX < -1+150+75 && mouseY > 575 && mouseY < 575+75) {
      fill(0);
      mathType = 3;
    }
  }
  if (mathType == 1) {
    addMath();
  } else if (mathType == 2) {
    subMath();
  } else if (mathType == 3) {
    notGame();
  } else if (mathType == 4) {
    buttons();
  }
}

void addMath() {
  
}

void subMath() {
  
}

void notGame() {
  
}