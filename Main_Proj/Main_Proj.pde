  //Global Color Values
  int red = 0;
  int green = 0;
  int blue = 0;

void setup()
{
  //size(1800,1000);
  rect(100, 100, 100, 765);
  rect(250, 100, 100, 765);
  rect(400, 100, 100, 765);
}


void draw()
{
  //ddasdasd
  
}

void mouseDragged() 
{
  checkAreas();
  //line(mouseX, 20, pmouseX, 80); 
}

//Called on mouseclick to see if its in the zone of the dragable boxes for RGB
void checkAreas()
{ 
  //line(mouseX, 20, mouseY, 80);
  //Line Height Calculator
  int distanceup = 865-mouseY;
  
  
  
  //Reset Base Color
  fill(255);
  
  //Red Level Controller
  if(mouseX >= 100 && mouseX <= 200 )
  {
    
    if(mouseY >= 100 && mouseY <= 765)
    {
      rect(100, 100, 100, 765);
      fill(red,green,blue);
      rect(100,865,100,-distanceup);
      red = distanceup/3;
    }
  }
  
  //Green Level Controller
  if(mouseX >= 250 && mouseX <= 350 )
  {
    if(mouseY >= 100 && mouseY <= 765)
    {
      rect(250, 100, 100, 765);
      fill(red,green,blue);
      rect(250,865,100,-distanceup);
      green = distanceup/3;
    }
  }
  
  //Blue Level Controller
  if(mouseX >= 400 && mouseX <= 500 )
  {
    if(mouseY >= 100 && mouseY <= 765)
    {
      rect(400, 100, 100, 765);
      fill(red,green,blue);
      rect(400,865,100,-distanceup);
      blue = distanceup/3;
    }
  }
  
  print("The color values are " + red + "  " + green + "   "+ blue);
}
