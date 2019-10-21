 Mover [] bob; 
 void setup()   
 {     
 	size(512, 512);
 	bob = new Mover[100];
 	for (int i = 0; i < 100; i++) 
 	{
 		bob[i] = new Mover();
 	}
 }   
 void mousePressed()
 {
 	redraw();
 }

 void draw()   
 {    
 	for (int i = 0; i < 100; i++)
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
 		myX = (int) (Math.random()*500);
 		myY = (int) (Math.random()*500);
 	}
 	void show()
 	{
 		ellipse(myX, myY, 10, 10);
 	}
 	void walk()
 	{
 		//J
 	}

 }    