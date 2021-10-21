  //Global Color Values
  int red = 0;
  int green = 0;
  int blue = 0;

void setup()
{
  //size(1800,1000);
  fill(255);
  rect(100, 100, 100, 765);
  rect(250, 100, 100, 765);
  rect(400, 100, 100, 765);
  
}


void draw()
{
  background(255);
  setup();
  
  //fill after return is 0
  getSliderValues();
  
  text("Your Current Color is: " + red + "  "+ green + "  " + blue,600,500);
  
}

void getSliderValues()
{
  //line(mouseX, 20, mouseY, 80);
  //Line Height Calculator
  int distanceup = 865-mouseY;
  
  fill(0);
  rect(100,865,100,-red*3);
  rect(250,865,100,-green*3);
  rect(400,865,100,-blue*3);

  //drawing handles for slider
  

  //Red Level Controller
  if(mouseX >= 100 && mouseX <= 200 )
  {
    
    if(mouseY >= 100 && mouseY <= 765)
    {
      //fill(red,green,blue);
      rect(100,865,100,-distanceup);
      red = distanceup/3;
    }
  }
  
  //Green Level Controller
  if(mouseX >= 250 && mouseX <= 350 )
  {
    if(mouseY >= 100 && mouseY <= 765)
    {
      //fill(red,green,blue);
      rect(250,865,100,-distanceup);
      green = distanceup/3;
    }
  }
  
  //Blue Level Controller
  if(mouseX >= 400 && mouseX <= 500 )
  {
    if(mouseY >= 100 && mouseY <= 765)
    {
      //fill(red,green,blue);
      rect(400,865,100,-distanceup);
      blue = distanceup/3;
    }
  }
  
  fill(0);
  textSize(36);
  text(red, 125, 910);
  text(green, 275, 910);
  text(blue, 425, 910);
  
  
  //drawing handles for sliders
  fill(255,0,0);
  rect(75, 865-red*3-50, 150, 100, 24, 24, 0, 0);
  rect(225, 865-green*3-50, 150, 100, 24, 24, 0, 0);
  rect(375, 865-blue*3-50, 150, 100, 24, 24, 0, 0);
  fill(0);
  
  print("The color values are " + red + "  " + green + "   "+ blue);
}
