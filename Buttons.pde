//Global Variables
boolean TimeStart = false, ALARM = false, Pause = false, Reset = false;
boolean Button1, Button2, Button3, Button4, Button5, Button6, Button7, Button8, Button9, Button0;
int TimeSelected = 1, Time1, Time10, Time100, Time1000, Time10000, Time100000, Time1000000, Time;
float TimerDisplayX, TimerDisplayY, TimerDisplayX2, TimerBar, BarProg, TimeBarAdd;
float ButtonX, ButtonSpace, StopX, StopY;
float ButtonX1, ButtonX2, ButtonX3, ButtonY1, ButtonY2, ButtonY3, ButtonY4;
float GR;
void setup () {
  
  //
  size (500, 750);
  background (255);
  
  //Logic
  GR = height / 6 ;
  TimerDisplayX = GR / 2;
  TimerDisplayY = GR / 2;
  TimerDisplayX2 = width - GR;
  ButtonX = GR / 2;
  ButtonY1 = GR * 1.5;
  //
  ButtonX1 = GR / 2;
  ButtonX2 = ButtonX1 + GR;
  ButtonX3 = ButtonX2 + GR;
  ButtonY2 = ButtonY1 + GR;
  ButtonY3 = ButtonY2 + GR;
  ButtonY4 = ButtonY3 + GR;
  //
  TimerBar = TimerDisplayX2;
  BarProg = TimerBar / 100;
  BarProg = 0;
  TimeBarAdd = 0;
  //
  Time1 = 0;
  Time10 = 0;
  Time100 = 0;
  Time1000 = 0;
  Time10000 = 0;
  Time100000 = 0;
  Time1000000 = 0;
  //
  TimeSelected = 1;
  Time = 0;
  //
  StopX = (width / 2) - GR;
  StopY = (height / 2) - (GR / 2);
  
}//End setup
void draw () {
  //Calculator
  if (TimeStart == false && Pause == false) {
    Time = Time1 + Time10 + Time100 + Time1000 + Time10000 + Time100000 + Time1000000;
    TimeBarAdd = TimerBar / Time;
  }
  
  //
  ButtonDraw ();
  Timer ();
  TimerALARM ();
  if (TimeStart == true && ALARM == false && Pause == false) {
  }
}//End Draw
void mousePressed () {
  rect (TimerDisplayX, TimerDisplayY, TimerDisplayX2, GR);
  TimerLogic ();
  ButtonmousePressed ();
}//End mousePressed
void keyPressed () {
  if (key == ' ' ) {
    TimeStart = true;
  }
  if (key == 'r' && ALARM == false|| key == 'R' && ALARM == false) {
    BarProg = 0;
    TimeSelected = 1;
    Time1 = 0;
    Time10 = 0;
    Time100 = 0;
    Time1000 = 0;
    Time10000 = 0;
    Time100000 = 0;
    Time1000000 = 0;
    Time = 0;
    TimeStart = false;
    ALARM = false;
    Pause = false;
    Reset = true;
    println ("Reset");
  }
}//End keyPressed
