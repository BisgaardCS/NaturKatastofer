//Objekter
DataBroker DB;
 TextBox tbox;

  final int stateNormal   = 0;
  final int stateInputBox = 1;
  int state=stateNormal; 

  // the user name 
  String result="/"; 

void settings(){
  size(1240, 480);
}

void setup() {
  //Constucture
  DB = new DataBroker();

  rectMode(CORNER);
  textAlign(LEFT);
  strokeWeight(1.5);

  instantiateBox();
  tbox.isFocused = true;
}


void draw() {
  background(#778C85);

  if (state==stateNormal) {
    text("Click mouse\nYour name: "+result, 19, 19);
  } else  if (state==stateInputBox) {
    tbox.display();
  }
}
void mouseClicked() {

    if (state==stateNormal) {
      // in normal mode: 
      // switch on input box
      state = stateInputBox;
    } else  if (state==stateInputBox) {
      // do nothing
    }
  }

  void keyTyped() {
    if (state==stateNormal) {
      // do nothing
    } else if (state==stateInputBox) {
      //
      tbox.tKeyTyped();
    }
  }//func 

  void keyPressed() {
    if (state==stateNormal) {
      //
    } else if (state==stateInputBox) {
      //
      tbox.tKeyPressed();
    }
  }//func

  void instantiateBox() {
    tbox = new TextBox(
      "Please enter your name: ", 
      width/2-width/3, height/4 + height/16, // x, y
      width/3, height/2 - height/4 - height/8, // w, h
      215, // lim
      0300 << 030, color(-1, 040), // textC, baseC
      color(-1, 0100), color(#FF00FF, 0200)); // bordC, slctC
  }
