 Bacteria[] bob = new Bacteria[100];


void setup()   
{     
  size (500, 500);
  frameRate(30);
  for (int i = 0; i < bob.length; i++)
  {
    bob[i] = new Bacteria();
  }
}   
void draw()   
{    
  background(255);
  for (int i = 0; i < bob.length; i++)
  {
    bob[i].move();
    bob[i].show();
    bob[i].follow();
  }
}  
class Bacteria    
{     
  int myX, myY, colorR, colorG, colorB;
  Bacteria()
  {
    myX = (int)(Math.random()*501);
    myY = (int)(Math.random()*501);
    colorR = (int)(Math.random()*256);
    colorG = (int)(Math.random()*256);
    colorB = (int)(Math.random()*256);
  }
  void move()
  {
    if (myX <= 0) {
      myX = myX + (int)(Math.random()*3)+1;
    } else if (myX > 0 || myX < 500) {
      myX = myX + (int)(Math.random()*3)-1;
    } else if (myX >= 500) {
      myX = myX + (int)(Math.random()*3)-1;
    }
    
    if (myY <= 0) {
      myY = myY + (int)(Math.random()*3)+1;
    } else if (myY > 0 || myY < 500) {
      myY = myY + (int)(Math.random()*3)-1;
    } else if (myY >= 500) {
      myY = myY + (int)(Math.random()*3)-1;
    }
  }
  void show()
  {
    fill (colorR, colorG, colorB);
    noStroke();
    ellipse (myX, myY, 10, 10);

  }
  void follow()
  {
    if (mouseX - myX <= 0 && dist(myX, myY, mouseX, mouseY) > 0) 
    {
      myX = myX - (int)(Math.random()*7)+2;
    }
    if (mouseX - myX > 0 && dist(myX, myY, mouseX, mouseY) > 0) 
    {
      myX = myX + (int)(Math.random()*7)-2;
    }
    if (mouseY - myY <= 0 && dist(myX, myY, mouseX, mouseY) > 0) 
    {
      myY = myY - (int)(Math.random()*7)+2;
    }
    if (mouseY - myY > 0 && dist(myX, myY, mouseX, mouseY) > 0) 
    {
      myY = myY + (int)(Math.random()*7)-2;
    }
  }
}    
