 Bacteria [] bob;//declare bacteria variables here   
 void setup()   
 {  
 	noStroke(); 
 	background(0);  
 	size(900, 900);
 	bob = new Bacteria [10];
 	for(int i = 0; i < bob.length; i++){
 		bob[i] = new Bacteria();
 		}//initialize bacteria variables here   
 }   
 void draw()   
 {    
 	for(int i = 0; i < bob.length; i++){
 	bob[i].show();
 	bob[i].walk();//move and show the bacteria   
 }  
}
 class Bacteria    
 {     
 	int myX, myY, myColor;
 	Bacteria(){
 		myX = myY = 450; 
 		myColor = color((int)(Math.random()*256), (int)(Math.random()*256),(int)(Math.random()*256));
 }
 void walk(){
 	int direction = (int)(Math.random()*4);
  	if(direction == 0)
  	{
    	myX = myX + 15; //right
  	}
  	else if(direction == 1)
  	{
    	myX = myX - 15; //left
  	}
  	else if(direction == 2)
  	{
    	myY = myY + 15; //down
  	}
  	else // direction must be 3
  	{
   	 	myY = myY - 15; //up
  }

 }
 void show(){
 	fill(myColor);
 	ellipse(myX, myY, 10, 10);
 	}
 } 
