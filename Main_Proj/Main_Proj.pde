void setup()
{
  rect(100, 100, 100, 765);
  rect(250, 100, 100, 765);
  rect(400, 100, 100, 765);
}


void draw()
{
  //ddasdasd
}

void mouseClicked() 
{
  checkAreas();
  line(mouseX, 20, pmouseX, 80); 
}

//Called on mouseclick to see if its in the zone of the dragable boxes for RGB
void checkAreas()
{ 
  line(mouseX, 20, mouseY, 80);

  //Red Level Controller
  if(mouseX >= 100 && mouseX <= 200 )
  {
    if(mouseY >= 100 && mouseY <= 765)
    {
      
    }
  }
  
  //Green Level Controller
  if(mouseX >= 250 && mouseX <= 350 )
  {
    if(mouseY >= 100 && mouseY <= 765)
    {
      
    }
  }
  
  //Blue Level Controller
  if(mouseX >= 4000 && mouseX <= 500 )
  {
    if(mouseY >= 100 && mouseY <= 765)
    {
      
    }
  }
}
