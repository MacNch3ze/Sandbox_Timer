void ButtonDraw () {
  
  //Timer
  fill (255);
  rect (TimerDisplayX, TimerDisplayY, TimerDisplayX2, GR);
  
  //TimeBar
  rect (TimerDisplayX, TimerDisplayY - GR / 5, TimerBar, GR / 5);
  fill (0);
  rect (TimerDisplayX, TimerDisplayY - GR / 5, BarProg, GR / 5);
  fill (255);
  
  //Buttons
  while (ButtonX < GR * 3) {
    rect (ButtonX, ButtonY1, GR, GR);
    rect (ButtonX, ButtonY2, GR, GR);
    rect (ButtonX, ButtonY3, GR, GR);
    rect (ButtonX, ButtonY4, GR, GR);
    ButtonX = ButtonX + GR ;
  }
  
  //Button Texts
  fill (0);
  textSize (100);
  text ("1", ButtonX1 + 30, ButtonY1 + GR - 30);
  text ("2", ButtonX2 + 30, ButtonY1 + GR - 30);
  text ("3", ButtonX3 + 30, ButtonY1 + GR - 30);
  text ("4", ButtonX1 + 30, ButtonY2 + GR - 30);
  text ("5", ButtonX2 + 30, ButtonY2 + GR - 30);
  text ("6", ButtonX3 + 30, ButtonY2 + GR - 30);
  text ("7", ButtonX1 + 30, ButtonY3 + GR - 30);
  text ("8", ButtonX2 + 30, ButtonY3 + GR - 30);
  text ("9", ButtonX3 + 30, ButtonY3 + GR - 30);
  text ("0", ButtonX2 + 30, ButtonY4 + GR - 30);
  
  //
  textSize (50);
  text ("Pause", ButtonX1, ButtonY4 + GR - 50);
  text ("Start", ButtonX3 + 10, ButtonY4 + GR - 50);
  
  //Button Logic
  //learning how to forloop this would be soooo nice ;-;
  if (ALARM == false) {
    if (mouseX > ButtonX1 && mouseY > ButtonY1 && mouseX < ButtonX2 && mouseY < ButtonY2) {
      Button1 = true;
    } else {
      Button1 = false;
      }
      if (mouseX > ButtonX2 && mouseY > ButtonY1 && mouseX < ButtonX3 && mouseY < ButtonY2) {
      Button2 = true;
    } else { 
      Button2 = false;
    }
      if (mouseX > ButtonX3 && mouseY > ButtonY1 && mouseX < ButtonX3+GR && mouseY < ButtonY2) {
      Button3 = true;
    } else { 
      Button3 = false;
    }
      if (mouseX > ButtonX1 && mouseY > ButtonY2 && mouseX < ButtonX2 && mouseY < ButtonY3) {
      Button4 = true;
    } else { 
      Button4 = false;
    }
      if (mouseX > ButtonX2 && mouseY > ButtonY2 && mouseX < ButtonX3 && mouseY < ButtonY3) {
      Button5 = true;
    } else { 
      Button5 = false;
    }
      if (mouseX > ButtonX3 && mouseY > ButtonY2 && mouseX < ButtonX3+GR && mouseY < ButtonY3) {
      Button6 = true;
    } else { 
      Button6 = false;
    }
      if (mouseX > ButtonX1 && mouseY > ButtonY3 && mouseX < ButtonX2 && mouseY < ButtonY4) {
      Button7 = true;
    } else { 
      Button7 = false;
    }
      if (mouseX > ButtonX2 && mouseY > ButtonY3 && mouseX < ButtonX3 && mouseY < ButtonY4) {
      Button8 = true;
    } else { 
      Button8 = false;
    }
      if (mouseX > ButtonX3 && mouseY > ButtonY3 && mouseX < ButtonX3+GR && mouseY < ButtonY4) {
      Button9 = true;
    } else { 
      Button9 = false;
    }
      if (mouseX > ButtonX2 && mouseY > ButtonY4 && mouseX < ButtonX3 && mouseY < ButtonY4+GR) {
      Button0 = true;
    } else { 
      Button0 = false;
    }
  }
  
  //if (Button1 = true) {
  //println (1);
  //}
  fill(0);
  textSize (100);
  text (Time, TimerDisplayX, ButtonY1 - 10);
  fill (255);
}//End ButtonDraw

void ButtonmousePressed () {
  
  //Pause
  if (mouseX > ButtonX1 && mouseY > ButtonY4 && mouseX < ButtonX2 && mouseY < ButtonY4+GR) {
    println("Pause");
    Pause = true;
  }
  
  //Start
  if (mouseX > ButtonX3 && mouseY > ButtonY4 && mouseX < ButtonX3+GR && mouseY < ButtonY4+GR) {
    println("Start");
    TimeStart = true;
    Pause = false;
  } else { 
    TimeStart = false;
  }
  
  //Limiter
  if (TimeSelected < 8) {
    //
    if ( Button1 == true ) {
      TimeSelected ++ ;
      println (Time);
    }
    if ( Button2 == true ) {
      TimeSelected ++ ;
      println (Time);
    }
    if ( Button3 == true ) {
      TimeSelected ++ ;
      println (Time);
    }
    if ( Button4 == true ) {
      TimeSelected ++ ;
      println (Time);
    }
    if ( Button5 == true ) {
      TimeSelected ++ ;
      println (Time);
    }
    if ( Button6 == true ) {
      TimeSelected ++ ;
      println (Time);
    }
    if ( Button7 == true ) {
      TimeSelected ++ ;
      println (Time);
    }
    if ( Button8 == true ) {
      TimeSelected ++ ;
      println (Time);
      }
    if ( Button9 == true ) {
      TimeSelected ++ ;
      println (Time);
    }
    if ( Button0 == true ) {
      TimeSelected ++ ;
      println (Time);
    }
  }//End Limiter
}//End ButtonmousePressed
