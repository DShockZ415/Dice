void setup()
{
  size(595,595);
	noLoop();
}
int x;
int y;
void draw()
{
  background(255);
  for(y=0;y<=600;y+=50)
  {
    for(x=0;x<=600;x+=50)
    {
      Die bob=new Die();
      bob.roll();
      bob.show();
    }
  }
  
}
class Die //models one single dice cube
{
  int numRoll;
	int myX,myY;
	Die() //constructor
	{
		myX=x;
    myY=y;
    numRoll=((int)(Math.random()*6)+1);
	}
	void roll()
{
    fill(0);
    if(numRoll==1)
    {ellipse(myX+23,myY-23,10,10);
    }
    if(numRoll==2)
    {ellipse(myX+12,myY-23,10,10);
    ellipse(myX+36,myY-23,10,10);
    }
    if(numRoll==3)
    {ellipse(myX+12,myY-36,10,10);
    ellipse(myX+23,myY-23,10,10);
    ellipse(myX+36,myY-12,10,10);
    }
    if(numRoll==4)
    {ellipse(myX+12,myY-12,10,10);
    ellipse(myX+12,myY-36,10,10);
    ellipse(myX+36,myY-12,10,10);
    ellipse(myX+36,myY-36,10,10);
    }
    if(numRoll==5)
    {ellipse(myX+12,myY-12,10,10);
    ellipse(myX+12,myY-36,10,10);
    ellipse(myX+36,myY-12,10,10);
    ellipse(myX+36,myY-36,10,10);
    ellipse(myX+23,myY-23,10,10);
    }
    if(numRoll==6)
    {ellipse(myX+12,myY-12,10,10);
    ellipse(myX+12,myY-24,10,10);
    ellipse(myX+12,myY-36,10,10);
    ellipse(myX+36,myY-12,10,10);
    ellipse(myX+36,myY-24,10,10);
    ellipse(myX+36,myY-36,10,10);
    }
}

	void show()
	{
		fill((int)((Math.random()*201)+55),(int)((Math.random()*201)+55),(int)((Math.random()*201)+55));
    noStroke();
    beginShape();
    rect(myX,myY,46,46);
	}
}

void mouseClicked()
{
  redraw();
}