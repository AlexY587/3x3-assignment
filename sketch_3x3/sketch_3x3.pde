//Global Variables
float rect1X, rect1Y, rect1Width, rect1Height;
float rect2X, rect2Y, rect2Width, rect2Height;
float rect3X, rect3Y, rect3Width, rect3Height;
float rect4X, rect4Y, rect4Width, rect4Height;
float rect5X, rect5Y, rect5Width, rect5Height;
float rect6X, rect6Y, rect6Width, rect6Height;
float rect7X, rect7Y, rect7Width, rect7Height;
float rect8X, rect8Y, rect8Width, rect8Height;
float rect9X, rect9Y, rect9Width, rect9Height;
//
void setup() {
  size(1000, 800);
  int appwidth = width;
  int appheight = height;
  if (width < displayWidth || height < displayHeight) {
    appwidth = displayWidth;
    appheight = displayHeight;
    println("canvas needs to be re adjusted");
  } else {
    println("canvas is good to go");
  }
  //display orientation
  String ls="Landscape or Square", p="portrait", DO="Display Orientation", instruct="Bru, turn your phon";
  String orientation = (appwidth >= appheight) ? ls : p ;
  println(DO, orientation);
  if(orientation == ls) {
    println("good to go");
  } else {
    appwidth *= 0;
    appheight *= 0;
    println(instruct);
  }
}//end setup
//
void draw() {
  
}//end draw
//
void keyPressed() {
}//endkeypressed
//
void mousePressed() {
} //end mousepressed
//
//end main program
