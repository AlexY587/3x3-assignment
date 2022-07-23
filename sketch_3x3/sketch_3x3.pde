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
float xcenter, ycenter;
//
void setup() {
  size(1200, 800);
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
  //
  //Population
  xcenter = appwidth*1/4.7;
  ycenter = appheight*1/4;
  println(xcenter, ycenter);
  rect1X = xcenter;
  rect1Y = ycenter;
  rect1Width = appwidth/5;
  rect1Height = appheight/4.2;
  rect2X = rect1X/20;
  rect2Y = rect1Y;
  rect2Width = rect1Width;
  rect2Height = rect1Height;
  rect3X = rect1X*1.95;
  rect3Y = rect1Y;
  rect3Width = rect1Width;
  rect3Height = rect1Height;
  rect4X = rect1X;
  rect4Y = rect1Y*1.98;
  rect4Width = rect1Width;
  rect4Height = rect1Height;
  rect5X = rect1X;
  rect5Y = rect1Y*1/45;
  rect5Width = rect1Width;
  rect5Height = rect1Height;
  rect6X = rect2X;
  rect6Y = rect4Y;
  rect6Width = rect1Width;
  rect6Height = rect1Height;
  rect7X = rect2X;
  rect7Y = rect5Y;
  rect7Width = rect1Width;
  rect7Height = rect1Height;
  rect8X = rect3X;
  rect8Y = rect5Y;
  rect8Width = rect1Width;
  rect8Height = rect1Height;
  rect9X = rect3X;
  rect9Y = rect4Y;
  rect9Width = rect1Width;
  rect9Height = rect1Height;
  //
}//end setup
//
void draw() {
  rect(rect1X, rect1Y,rect1Width, rect1Height);
  rect(rect2X, rect2Y,rect2Width, rect2Height);
  rect(rect3X, rect3Y,rect3Width, rect3Height);
  rect(rect4X, rect4Y,rect4Width, rect4Height);
  rect(rect5X, rect5Y,rect5Width, rect5Height);
  rect(rect6X, rect6Y,rect6Width, rect6Height);
  rect(rect7X, rect7Y,rect7Width, rect7Height);
  rect(rect8X, rect8Y,rect8Width, rect8Height);
  rect(rect9X, rect9Y,rect9Width, rect9Height);
}//end draw
//
void keyPressed() {
}//endkeypressed
//
void mousePressed() {
} //end mousepressed
//
//end main program
