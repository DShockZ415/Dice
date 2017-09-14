void setup()
{
  size(600,300);
	noLoop();
}
void draw()
{
  background(0);
  
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
  int numDice;
	int myX,myY;
	Die(int x, int y) //constructor
	{
    numDice=((int)(Math.random()*6)+1);
		myX=x;
    myY=y;
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		//your code here
	}
}