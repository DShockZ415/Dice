void setup()
{
  size(600,600);
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
      bob.show();
    }
  }
  
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
  int numDice;
	int myX,myY;
	Die() //constructor
	{
		myX=x;
    myY=y;
    roll();
	}
	void roll()
	{
		numDice=((int)(Math.random()*6)+1);
	}
	void show()
	{
		fill((int)((Math.random()*201)+55),(int)((Math.random()*201)+55),(int)((Math.random()*201)+55));
    noStroke();
    beginShape();
    curveVertex(myX,myY);
    curveVertex(myX,myY);
    curveVertex(myX,myY+40);
    curveVertex(myX+40,myY+40);
    curveVertex(myX+40,myY);
    curveVertex(myX,myY);
    curveVertex(myX,myY);
    endShape();
	}
}

void mouseClicked()
{
  redraw();
}