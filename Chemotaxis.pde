 Bacteria [] bob;
 void setup()   
 {  
 	noStroke(); 
 	background(0);  
 	size(600, 600);
 	bob = new Bacteria [15];
 	for(int i = 0; i < bob.length; i++){
 		bob[i] = new Bacteria();
 		}
 }   
 void draw()   
 {    
 	for(int i = 0; i < bob.length; i++){
 	bob[i].show();
 	bob[i].walk();
 }  
}
 class Bacteria
 {
 	int myX, myY, myColor;
 	Bacteria(){
 		myX = myY = 300; 
 		myColor = color((int)(Math.random()*256), (int)(Math.random()*256),(int)(Math.random()*256));
 }
 void walk(){
 	int direction = (int)(Math.random()*4);
  	if(direction == 0)
  	{
    	myX = myX + 15;
  	}
  	else if(direction == 1)
  	{
    	myX = myX - 15;
  	}
  	else if(direction == 2)
  	{
    	myY = myY + 15;
  	}
  	else
  	{
   	 	myY = myY - 15;
  }
 }
 void show(){
 	fill(myColor);
 	ellipse(myX, myY, 10, 10);
 	}
 } 
