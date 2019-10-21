 Mover [] bob; 
 void setup()   
 {     
 	size(600, 600);
 	bob = new Mover[10000];
 	for (int i = 0; i < 10000; i++) 
 	{
 		bob[i] = new Mover();
 	}
 }   
 void draw()   
 {    
 	background(0);
 	for (int i = 0; i < 10000; i++)
 	{
 	bob[i].show();
 	bob[i].walk();
 	}  
 }

 class Mover    
 {     
 	int myX,myY;
 	Mover()
 	{
 		myX = 300;//(int) (Math.random()*500);
 		myY = 300;//(int) (Math.random()*500);
 	}
 	void show()
 	{
 		noStroke();
 		if (myX < 100)
 		{
 			fill(255,0,0);
 		}
 		if (100 <= myX && myX < 200)
 		{
 			fill(255,69,0);
 		}
 		if (200 <= myX && myX < 300)
 		{
 			fill(255,255,0);
 		}
 		if (300 <= myX && myX < 400)
 		{
 			fill(0,255,0);
 		}
 		if (400 <= myX && myX < 500)
 		{
 			fill(0,0,255);
 		}
 		if (500 <= myX && myX < 600)
 		{
 			fill(100,0,255);
 		}
 		ellipse(myX, myY, 15, 15);
 	}
 	void walk()
 	{
 		myX = myX + (int) (Math.random()*20-10);
 		myY = myY + (int) (Math.random()*20-10);

 		if (myX < 0 || myX > 600)
 		{
 			myX = 300;
 			myY = 300;
 		}
 		if (myY < 0 || myY > 600)
 		{
 			myX = 300;
 			myY = 300;
 		}
 	}
 	void colorful()
 	{
 		if (myX < 100)
 		{
 			fill(255,0,0);
 		}
 		if (100 < myX && myX < 200)
 		{
 			fill(255,69,0);
 		}
 		if (200 < myX && myX < 300)
 		{
 			fill(255,255,0);
 		}
 		if (300 < myX && myX < 400)
 		{
 			fill(0,255,0);
 		}
 		if (400 < myX && myX < 500)
 		{
 			fill(0,0,255);
 		}
 		if (500 < myX && myX < 600)
 		{
 			fill(100,0,255);
 		}
 	}

 }    