//Global Variables
int appWidth, appHeight;
Boolean windowActivated = false;
float button1Width, button1Height;
float BX1, BX2, BX3, BY1, BY2, BY3, BY4, BAY, BAX, BAW, BAH, X1, X2, X3, X4, Y1, Y2, Y3, Y4;
//
void setup () {
  size( 600, 700 );
  //fullScreen(); //displayWidth, displayHeight
  appWidth = width;
  appHeight = height;
  //
  button1Width = appWidth/8;
  button1Height = appHeight/8;
  //
  println("Display Width", displayWidth, "Display Height", displayHeight);
  println("App Width", appWidth, "App Height", appHeight);
  //
  if (appWidth>displayWidth) appWidth=displayWidth;
  if (appHeight>displayHeight) appHeight=displayHeight;
  println(appWidth, appHeight);
  //
} //End Setup
//
void draw() {
Buttons();
//FOR();
} //End draw
//
void mousePressed() {
  windowActivated = true;
  ButtonFunction();
} //End mousePressed
//
void keyPressed( ) {
}  //End keyPressed
//
//End MAIN Program
