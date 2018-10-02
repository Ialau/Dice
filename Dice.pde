Die one;
Die two;
Die three;
Die four;
Die five;

void setup()
{
	noLoop();
  size(600,600);
}
void draw()
{
	background(255,255,255);
  for (int y2 = 20; y2 < 580; y2 += 40){
    for (int x2 = 20; x2 < 580; x2 += 40){
    one = new Die(x2,y2);
     one.show();
    }
  }
}
void mousePressed()
{
	redraw();
}
class Die {
	int dieNumber, myX, myY;
	
	Die(int x, int y) //constructor
	{
		myX = x;
    myY = y;
    roll();
    
	}
	void roll()
	{
		dieNumber = (int)((Math.random()*6)+1);
	}
	void show()
	{
    if(dieNumber==1){
      fill(180,66,66);
      rect(myX, myY,40,40);
      fill(3,3,3);
      ellipse(myX+20,myY+20,5,5);
    }
    if(dieNumber==2){
      fill(168,66,180);
      rect(myX, myY,40,40);
      fill(3,3,3);
      ellipse(myX+15,myY+15,5,5);
      ellipse(myX+25, myY+25,5,5);
    }
    if(dieNumber==3){
      fill(66,72,180);
      rect(myX, myY,40,40);
      fill(3,3,3);
      ellipse(myX+10, myY+10,5,5);
      ellipse(myX+20,myY+20,5,5);
      ellipse(myX+30, myY+30, 5,5);
    }
    if(dieNumber==4){
      fill(66,180,177);
      rect(myX, myY,40,40);
      fill(3,3,3);
      ellipse(myX+10,myY+10,5,5);
      ellipse(myX+30, myY+10,5,5);
      ellipse(myX+10,myY+30,5,5);
      ellipse(myX+30,myY+30,5,5);
    }
    if(dieNumber==5){
      fill(66,180,70);
      rect(myX, myY,40,40);
      fill(3,3,3);
      ellipse(myX+10,myY+10,5,5);
      ellipse(myX+30, myY+10,5,5);
      ellipse(myX+10,myY+30,5,5);
      ellipse(myX+30,myY+30,5,5);
      ellipse(myX+20,myY+20,5,5);
    }
    if(dieNumber==6){
      fill(180,180,66);
      rect(myX, myY,40,40);
      fill(3,3,3);
      ellipse(myX+10,myY+10,5,5);
      ellipse(myX+30, myY+10,5,5);
      ellipse(myX+10,myY+30,5,5);
      ellipse(myX+30,myY+30,5,5);
      ellipse(myX+10,myY+20,5,5);
      ellipse(myX+30, myY+20,5,5);
    }
    
		
	}
}
