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
float monkeyButtonX, monkeyButtonY, monkeyButtonWidth, monkeyButtonHeight;
float appleButtonX, appleButtonY, appleButtonWidth, appleButtonHeight;
float eatbannanaX, eatbannanaY, eatbannanaWidth, eatbannanaHeight;
float leavebannanaX, leavebannanaY, leavebannanaWidth, leavebannanaHeight;
float endingX, endingY, endingWidth, endingHeight;
float xcenter, ycenter;
float xstart, ystart, startheight, startwidth;
float xquit, yquit, quitheight, quitwidth;
color red = #FF0808, blue = #0A08FF, reset = #FFFFFF, startTint, grey=#959191, black=#000000, quitTint, eatTint, leaveTint, monkeyTint, appleTint;
String startTitle = "Start", quitTitle = "Exit", eatBannanaText = "Eat the bannana?", leaveBannanaText="Leave the bannana?", monkeyText = "Oh no its a monkey",appleText = "Its an apple!!", endingText = "";
PFont titlefont;
int startsize, quitSize, bannanaTextSize, endingTextSize, appleTextsize;
Boolean started = false, leftbannana = false, atebannana = false, eaten = false, left = false, choice1 = false, choice2 = false, monkeyed = false, apples = false;
float imageLargerDimension, imageSmallerDimension;
float imageX, imageY, imagewidth, imageheight, picWidthAdjusted, picHeightAdjusted;
Boolean widthLarger = false, heightLarger = false;
float imageLargerDimension2, imageSmallerDimension2;
float imageX2, imageY2, imagewidth2, imageheight2, picWidthAdjusted2, picHeightAdjusted2;
Boolean widthLarger2 = false, heightLarger2 = false;
float imageLargerDimension3, imageSmallerDimension3;
float imageX3, imageY3, imagewidth3, imageheight3, picWidthAdjusted3, picHeightAdjusted3;
Boolean widthLarger3 = false, heightLarger3 = false;
PImage pic, pic2, pic3;
float imageWidthRatio, imageHeightRatio, imageWidthRatio2, imageHeightRatio2, imageWidthRatio3, imageHeightRatio3;
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
  if (orientation == ls) {
    println("good to go");
  } else {
    appwidth *= 0;
    appheight *= 0;
    println(instruct);
  }
  //
  //Population
  titlefont = createFont("Times New Roman", 60);
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
  xstart = appwidth/4;
  ystart = appheight/3.5;
  startheight = appwidth/8;
  startwidth = appwidth/24;
  xquit = xstart/0.89;
  yquit = ystart/0.795;
  quitheight = startheight/2;
  quitwidth = startwidth/2;
  eatbannanaX = rect6X/0.22;
  eatbannanaY = rect6Y*1.09;
  eatbannanaWidth = startheight;
  eatbannanaHeight = startwidth;
  leavebannanaX = rect7X*4.5;
  leavebannanaY = rect7Y*9;
  leavebannanaWidth = startheight;
  leavebannanaHeight = startwidth;
  monkeyButtonX = eatbannanaX*9.4;
  monkeyButtonY = eatbannanaY;
  monkeyButtonWidth = startheight;
  monkeyButtonHeight = startwidth;
  endingX = rect7X*-17;
  endingY = rect7Y*-50;
  endingWidth = appwidth;
  endingHeight = appheight*1.2;
  appleButtonX = leavebannanaX*9.5;
  appleButtonY = leavebannanaY;
  appleButtonWidth = startheight;
  appleButtonHeight = startwidth;
  //
  rect(rect1X, rect1Y, rect1Width, rect1Height);
  //
  pic = loadImage("bannana.png");//dimensions : width 1600, height 1067
  int picWidth = 1600, picHeight = 1067;
  if (picWidth >= picHeight) {
  imageLargerDimension = picWidth;
  imageSmallerDimension = picHeight;
  widthLarger = true;
} else {
  //false if portrait
  imageLargerDimension = picHeight;
  imageSmallerDimension = picWidth;
  heightLarger = true;
 }//end image dimension comparison
  if (widthLarger == true) imageWidthRatio = imageLargerDimension / imageLargerDimension;
  if (widthLarger == true) imageHeightRatio = imageSmallerDimension / imageLargerDimension;
  if (heightLarger == true) imageWidthRatio = imageSmallerDimension / imageLargerDimension;
  if (heightLarger == true) imageHeightRatio = imageLargerDimension / imageLargerDimension;
  //
  imageX = rect2X * 3;
  imageY = rect2Y*1.05;
  imagewidth = rect2Height/1.1;//Canvas (0,0) means point doesnt match to rectangle missing outline on two sides
  imageheight = rect2Width;
  //
  picWidthAdjusted = imagewidth * imageWidthRatio;
  picHeightAdjusted = imageheight * imageHeightRatio;
  //end image1
    pic2 = loadImage("apple_158989157.jpg");//dimensions : width 1600, height 1067
  int picWidth2 = 1600, picHeight2 = 1067;
  if (picWidth2 >= picHeight2) {
  imageLargerDimension2 = picWidth2;
  imageSmallerDimension2 = picHeight2;
  widthLarger2 = true;
} else {
  //false if portrait
  imageLargerDimension2 = picHeight2;
  imageSmallerDimension2 = picWidth2;
  heightLarger2 = true;
 }//end image dimension comparison
  if (widthLarger2 == true) imageWidthRatio2 = imageLargerDimension2 / imageLargerDimension2;
  if (widthLarger2 == true) imageHeightRatio2 = imageSmallerDimension2 / imageLargerDimension2;
  if (heightLarger2 == true) imageWidthRatio2 = imageSmallerDimension2 / imageLargerDimension2;
  if (heightLarger2 == true) imageHeightRatio2 = imageLargerDimension2 / imageLargerDimension2;
  //
  imageX2 = rect2X * 23;
  imageY2 = rect2Y/35;
  imagewidth2 = rect2Height/1.1;//Canvas (0,0) means point doesnt match to rectangle missing outline on two sides
  imageheight2 = rect2Width;
  //
  picWidthAdjusted2 = imagewidth2 * imageWidthRatio2;
  picHeightAdjusted2 = imageheight2 * imageHeightRatio2;
  //end image2
    pic3 = loadImage("Monkey-Selfie.png");//dimensions : width 1600, height 1067
  int picWidth3 = 1600, picHeight3 = 1067;
  if (picWidth3 >= picHeight3) {
  imageLargerDimension3 = picWidth3;
  imageSmallerDimension3 = picHeight3;
  widthLarger3 = true;
} else {
  //false if portrait
  imageLargerDimension3 = picHeight3;
  imageSmallerDimension3 = picWidth3;
  heightLarger3 = true;
 }//end image dimension comparison
  if (widthLarger3 == true) imageWidthRatio3 = imageLargerDimension3 / imageLargerDimension3;
  if (widthLarger3 == true) imageHeightRatio3 = imageSmallerDimension3 / imageLargerDimension3;
  if (heightLarger3 == true) imageWidthRatio3 = imageSmallerDimension3 / imageLargerDimension3;
  if (heightLarger3 == true) imageHeightRatio3 = imageLargerDimension3 / imageLargerDimension3;
  //
  imageX3 = rect2X * 23;
  imageY3 = rect2Y*2.02;
  imagewidth3 = rect2Height/1.1;//Canvas (0,0) means point doesnt match to rectangle missing outline on two sides
  imageheight3 = rect2Width;
  //
  picWidthAdjusted3 = imagewidth3 * imageWidthRatio3;
  picHeightAdjusted3 = imageheight3 * imageHeightRatio3;
  //end image3
}//end setup
//
void draw() {
  rect(rect3X, rect3Y, rect3Width, rect3Height);
  rect(rect4X, rect4Y, rect4Width, rect4Height);
  rect(rect5X, rect5Y, rect5Width, rect5Height);
  rect(rect6X, rect6Y, rect6Width, rect6Height);
  rect(rect7X, rect7Y, rect7Width, rect7Height);
  rect(rect8X, rect8Y, rect8Width, rect8Height);
  rect(rect9X, rect9Y, rect9Width, rect9Height);
  if (mouseX>xstart && mouseX<xstart+startheight && mouseY>ystart && mouseY<ystart+startwidth) {
    startTint = grey;
    if (started == true) {
    startTitle = "Already Started";
    startsize = 25;
  }
  } else {
    startTitle = "Start";
    startTint = reset;
    startsize = 50;
  } //endhoverover
  if (mouseX>xquit && mouseX<xquit+quitheight && mouseY>yquit && mouseY<yquit+quitwidth) {
    quitTint = red;
  } else {
    quitTint = reset;
  } //endhoverover
    if (mouseX>eatbannanaX && mouseX<eatbannanaX+eatbannanaWidth && mouseY>eatbannanaY && mouseY<eatbannanaY+eatbannanaHeight) {
    eatTint = grey;
  } else {
    eatTint = reset;
  } //endhoverover
    if (mouseX>leavebannanaX && mouseX<leavebannanaX+leavebannanaWidth && mouseY>leavebannanaY && mouseY<leavebannanaY+leavebannanaHeight) {
    leaveTint = grey;
  } else {
    leaveTint = reset;
  } //endhoverover
  if (mouseX>monkeyButtonX && mouseX<monkeyButtonX+monkeyButtonWidth && mouseY>monkeyButtonY && mouseY<monkeyButtonY+monkeyButtonHeight) {
    monkeyTint = grey;
  } else {
    monkeyTint = reset;
  } //endhoverover
  if (mouseX>appleButtonX && mouseX<appleButtonX+appleButtonWidth && mouseY>appleButtonY && mouseY<appleButtonY+appleButtonHeight) {
    appleTint = grey;
  } else {
    appleTint = reset;
  } //endhoverover
  fill(startTint);
  rect(xstart, ystart, startheight, startwidth);
  fill(black);
  textAlign(CENTER, CENTER ); //Change this until it fits
  textFont(titlefont, startsize);
  text(startTitle, xstart, ystart, startheight, startwidth);
  fill(reset);
  //
  if (started == true) {
    if (choice2 == false) {
    if (choice1 == true) {
      eatBannanaText = "Yummy";
    }else{
    }
    fill(eatTint);
    rect(eatbannanaX, eatbannanaY, eatbannanaWidth, eatbannanaHeight);
    fill(black);
    textAlign(CENTER, CENTER );
    bannanaTextSize = 22; //Change this until it fits
    textFont(titlefont,bannanaTextSize );
    text(eatBannanaText, eatbannanaX, eatbannanaY, eatbannanaWidth, eatbannanaHeight);
    fill(reset);
    //
    }
    if (choice1 == false) {
    if (choice2 == true) {
      leaveBannanaText = "You left the bannana";
    }
    fill(leaveTint);
    rect(leavebannanaX, leavebannanaY, leavebannanaWidth, leavebannanaHeight);
    fill(black);
    textAlign(CENTER, CENTER );
    textFont(titlefont,bannanaTextSize );
    text(leaveBannanaText, leavebannanaX, leavebannanaY, leavebannanaWidth, leavebannanaHeight);
    fill(reset);
  } else {
  }
  }
  rect(rect2X, rect2Y, rect2Width, rect2Height);
  
  if (choice1 == false){
  image(pic,imageX, imageY, picHeightAdjusted, picWidthAdjusted);
  }
  //end first choice
  if (choice1 == true) {
  fill(monkeyTint);
  rect(monkeyButtonX, monkeyButtonY, monkeyButtonWidth, monkeyButtonHeight);
  fill(black);
  textAlign(CENTER, CENTER );
  bannanaTextSize = 22; //Change this until it fits
  textFont(titlefont,bannanaTextSize );
  text(monkeyText, monkeyButtonX, monkeyButtonY, monkeyButtonWidth, monkeyButtonHeight);
  fill(reset);
  image(pic3, imageX3, imageY3, picHeightAdjusted3, picWidthAdjusted3);
  } //end monkey event
  if (monkeyed == true) {
    rect(endingX, endingY, endingWidth, endingHeight);
    fill(black);
    textAlign(CENTER, CENTER );
    endingTextSize = 75; //Change this until it fits
    endingText = "THE END (MONKEY!!!)";
    textFont(titlefont,endingTextSize );
    text(endingText, endingX, endingY, endingWidth, endingHeight);
    fill(reset);
    
  } 
    if (choice2 == true) {
    fill(appleTint);
    rect(appleButtonX, appleButtonY, appleButtonWidth, appleButtonHeight);
    fill(black);
    textAlign(CENTER, CENTER );
    appleTextsize = 22; //Change this until it fits
    textFont(titlefont,appleTextsize );
    text(appleText, appleButtonX, appleButtonY, appleButtonWidth, appleButtonHeight);
    fill(reset);
    image(pic2, imageX2, imageY2, picHeightAdjusted2, picWidthAdjusted2);
  } //end monkey event
  if (apples == true) {
    rect(endingX, endingY, endingWidth, endingHeight);
    fill(black);
    textAlign(CENTER, CENTER );
    endingTextSize = 75; //Change this until it fits
    endingText = "THE END (APPLES!!)";
    textFont(titlefont,endingTextSize );
    text(endingText, endingX, endingY, endingWidth, endingHeight);
    fill(reset);
    
  } 
  //
  fill(quitTint);
  rect(xquit, yquit, quitheight, quitwidth);
  fill(black);
  textAlign(CENTER, CENTER );
  quitSize = 22; //Change this until it fits
  textFont(titlefont, quitSize);
  text(quitTitle, xquit, yquit, quitheight, quitwidth);
  fill(reset);
  //
}//end draw
//
void keyPressed() {
}//endkeypressed
//
void mousePressed() {
  if (mouseX>xquit && mouseX<xquit+quitheight && mouseY>yquit && mouseY<yquit+quitwidth) exit();
  //
  if (mouseX>xstart && mouseX<xstart+startheight && mouseY>ystart && mouseY<ystart+startwidth) {
    started = true;
  };
    if (mouseX>eatbannanaX && mouseX<eatbannanaX+eatbannanaWidth && mouseY>eatbannanaY && mouseY<eatbannanaY+eatbannanaHeight) {
    if (started == true){
      if(choice2 == false){
    eaten = true;
    choice1 = true;
      }
    }
  };
    if (mouseX>leavebannanaX && mouseX<leavebannanaX+leavebannanaWidth && mouseY>leavebannanaY && mouseY<leavebannanaY+leavebannanaHeight) {
    if (started == true){
      if(choice1 == false){
    left = true;
    choice2 = true;
      }
    }
  };
    if (mouseX>monkeyButtonX && mouseX<monkeyButtonX+monkeyButtonWidth && mouseY>monkeyButtonY && mouseY<monkeyButtonY+monkeyButtonWidth) {
    if (choice1 == true){
      monkeyed = true;
    }
  };
    if (mouseX>appleButtonX && mouseX<appleButtonX+appleButtonWidth && mouseY>appleButtonY && mouseY<appleButtonY+appleButtonHeight) {
    if (choice2 == true){
      apples = true;
    }
  };
} //end mousepressed
//
//end main program
