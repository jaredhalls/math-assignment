int mathType;
//addition variables
int add1 = 5;
int add2 = 5;
String userInput1 = "";
int addans;
int addscore;
int addinput;
//subtraction variables
int sub1 = int(random(5, 10));
int sub2 = int(random(1, 5));
String userInput2 = "";
int subans;
int subscore;
int subinput;
int decider;

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
      decider = 1;
    } else if (mouseX > -1+75 && mouseX < -1+75+75 && mouseY > 575 && mouseY < 575+25) {
      fill(0);
      mathType = 2;
      decider = 2;
    } else if (mouseX > -1+150 && mouseX < -1+150+75 && mouseY > 575 && mouseY < 575+75) {
      fill(0);
      mathType = 3;
      decider = 3;
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
  fill(255);
  addinput = int(userInput1); //<>//
  addans = add1 + add2;
  text("Hey, what is x?", 300, 200);
  text(addscore + "ssss" , 100, 200);
  text(userInput1, 300, 400);
  text(add1 + "+" + "x" + "=" + addans, 300, 300);
}

void subMath() {
  fill(255);
  subinput = int(userInput2);
  subans = sub1 - sub2;
  text("Hey, what is y?", 300, 200);
  text(subscore, 100, 200);
  text(userInput2, 300, 400);
  text(sub1 + "-" + "y" + "=" + subans, 300, 300);
}

void notGame() {
  fill(255);
}

void keyPressed() {
          println(addscore); //<>//

  if (decider == 1) {
    if (key == ENTER) {
      println(addinput+"isaddinput");
      println(add2 +"isadd2");
      if (addinput == add2) {
        addscore += 10;
        println(addscore); //<>//
      }
      add1 = 5; //<>//
      add2 = 5;
      userInput1 = "";
    }
    userInput1 += key;
  } else if (decider == 2) {
    if (key == ENTER) {
      if (subinput == sub2) {
        sub1 = 0;
        sub2 = 0;
        subscore += 10;
      }
      sub1 = int(random(5, 10));
      sub2 = int(random(1, 5));
      userInput2 = "";
    }
    userInput2 += key;
  }
}