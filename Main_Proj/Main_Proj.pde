  //Global Color Values
  int red = 0;
  int green = 0;
  int blue = 0;
  
  int typeSelected = -1;

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
  
  
  fill(red,green,blue);
  rect(650,550,300,300);
  
  text("Your Current Color is: " + red + "  "+ green + "  " + blue,600,500);
  
  //Type of Light displays
  createTypeArea();
  
  
}

//Makeing box on right side of screen to allow different types of lights designs to be created
void createTypeArea()
{
  //Creating Offsets
  int offsetx = 1200;
  int offsety = 300;
  //fill(0);
  noFill();
  rect(offsetx,offsety,600,600);
  
  if(typeSelected == 1)
  {
    fill(0);
    rect(offsetx+50,offsety+25,100,100,90,90,90,90);
  }
  
  //Creating Radio Buttons and text
  noFill();
  rect(offsetx+50,offsety+25,100,100,90,90,90,90); text("Pulse",offsetx+250,offsety+75);
  rect(offsetx+50,offsety+175,100,100,90,90,90,90); text("Breathing",offsetx+250,offsety+225);
  rect(offsetx+50,offsety+325,100,100,90,90,90,90); text("Static",offsetx+250,offsety+375);
  rect(offsetx+50,offsety+475,100,100,90,90,90,90); text("Rainbow",offsetx+250,offsety+525);
  //
  
  //if(mouseX >= offsetx+50 && mouseX <= offsetx+150 )
  //{
    
  //  if(mouseY >= offsety+25 && mouseY <= offsety+125)
  //  {
  //    //fill(0);
  //    //rect(offsetx+50,offsety+25,100,100,90,90,90,90);
  //    typeSelected = 1;
  //  }
  //}
  
  if((mouseX - offsetx)% 150 >= 0 )
  {
    
    if(mouseY >= offsety+25 && mouseY <= offsety+125)
    {
      //fill(0);
      //rect(offsetx+50,offsety+25,100,100,90,90,90,90);
      typeSelected = 1;
    }
  }
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
