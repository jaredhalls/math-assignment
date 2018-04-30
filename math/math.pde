//decides which type of math to start (addition,subtraction, etc) //<>// //<>// //<>// //<>//
int mathType;
//addition variables (creating random variables, answer key, user input, score)
int add1 = int(random(1, 10));
int add2 = int(random(1, 10));
String userInput1 = "";
int addans;
int addscore;
int addinput;
//subtraction variables (creating random variables, answer key, user input, score)
int sub1 = int(random(5, 10));
int sub2 = int(random(1, 5));
String userInput2 = "";
int subans;
int subscore;
int subinput;
int decider;
//setting up the basic parts, such as screen size, background colour, stroke.
void setup() {
  size(600, 600);
  background(0);
  stroke(0);
  noFill();
}
//sets up the buttons function
void draw() {
  background(0);
  buttons();
}

void buttons() {
  //creates rectangles to act as buttons, coloured white.
  fill(255);
  rect(-1, 575, 75, 25);
  rect(-1+75, 575, 75, 25);
  rect(-1+150, 575, 75, 25);
  //overlays text on the buttons
  fill(0);
  text("Addition", -1+2, 575+25);
  text("Subtraction", -1+77, 575+25);
  text("Game", -1+152, 575+25);
  //checking for button presses and executing code if the button was pressed
  if (mousePressed) {
    //checks if first button was clicked, then chooses the math type and runs keyboard function setup
    if (mouseX > -1 && mouseX < -1+75 && mouseY > 575 && mouseY < 575+25) {
      fill(0);
      //chooses math type and keyboard setup for addition
      mathType = 1;
      decider = 1;
      //checks if second button was clicked, then chooses the math type and runs keyboard function setup
    } else if (mouseX > -1+75 && mouseX < -1+75+75 && mouseY > 575 && mouseY < 575+25) {
      fill(0);
      //chooses math type and keyboard setup for subtraction
      mathType = 2;
      decider = 2;
    } else if (mouseX > -1+150 && mouseX < -1+150+75 && mouseY > 575 && mouseY < 575+75) {
      fill(0);
      //chooses math type and keyboard setup for the game
      mathType = 3;
      decider = 3;
    }
  } //checking the math type
  //chooses addition
  if (mathType == 1) {
    addMath();
  } 
  //chooses subtraction
  else if (mathType == 2) {
    subMath();
  } 
  //chooses the game
  else if (mathType == 3) {
    notGame();
  } 
  //goes back to the main screen
  else if (mathType == 4) {
    buttons();
  }
}
//setting up addition
void addMath() {
  fill(255);
  //sets the user input string to an integer
  addinput = int(userInput1);
  //sets addans as the two random ints added together
  addans = add1 + add2;
  //display text to ask the question
  text("Hey, what is x?", 300, 200);
  //displays the score
  text(addscore + "ssss", 100, 200);
  //the user input box
  text(userInput1, 300, 400);
  //displaying the math question with variable and answer to solve for x
  text(add1 + "+" + "x" + "=" + addans, 300, 300);
}
//setting up subtraction
void subMath() {
  fill(255);
  //sets the user input string to an integer
  subinput = int(userInput2);
  //sets subans as the two random ints added together
  subans = sub1 - sub2;
  text("Hey, what is y?", 300, 200);
  //displays the score
  text(subscore, 100, 200);
  //the user input box
  text(userInput2, 300, 400);
  //displaying the math question with variable and answer to solve for y
  text(sub1 + "-" + "y" + "=" + subans, 300, 300);
}
//would be the game part of the math
void notGame() {
  fill(255);
}
//setting up keyboard function
void keyPressed() {
  println(addscore);
  //checking decider for math type
  if (decider == 1) {
    //checks if enter was pressed
    if (key == ENTER) {
      println(addinput+"isaddinput");
      println(add2 +"isadd2");
      //checks if user input is equal to correct answer
      if (addinput == add2) {
        //adds ten to score if they are equal
        addscore += 10;
        println(addscore);
      }
      //generates new variables
      add1 = int(random(1, 10));
      add2 = int(random(1, 10));
      //resets user input box
      userInput1 = "";
    }
    userInput1 += key;
    //checks if decider is 2 to run subtraction
  } else if (decider == 2) {
    //checks if enter was pressed
    if (key == ENTER) {
      //checks if user input is equal to the correct answer
      if (subinput == sub2) {
        //adds 10 to score if input and answer are equal
        sub1 = 0;
        sub2 = 0;
        subscore += 10;
      }
      //resets variables, generating new numbers
      sub1 = int(random(5, 10));
      sub2 = int(random(1, 5));
      //resets user input box
      userInput2 = "";
    }
    userInput2 += key;
  }
}