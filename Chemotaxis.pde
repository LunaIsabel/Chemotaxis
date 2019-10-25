 //declare bacteria variables here
Bacteria[] group = new Bacteria[3000];
 void setup()   
 {     
 	size(900, 900);
 	background(0, 0, 0); 
 	for(int i = 0; i < group.length; i++){
 		group[i] = new Bacteria(450, 450);
 	}
 }   
 void draw()   
 {   
 	background(0, 0, 0);
 	for(int i = 0; i < group.length; i++){
 		group[i].walk();
 		group[i].show();
 	}
 }  
 void mousePressed(){
 	background(0, 0, 0);
		for(int i = 0; i < group.length; i++){
			group[i].ReiniciaX = 450;
			group[i].ReiniciaY = 450;
		}
	}	 
 class Bacteria    
 {     
 	//lots of java!
 	int ReiniciaX, ReiniciaY, Micolor;
 	Bacteria(int x, int y){
 	    ReiniciaX = x;
 	    ReiniciaY = y;
 	    Micolor = 255;
    }
	void walk(){
		ReiniciaX = ReiniciaX + (int)(Math.random() * 51) - 25;
		ReiniciaY = ReiniciaY + (int)(Math.random() * 51) - 25;
	}
	void show(){
		fill(Micolor, 255, 255);
		ellipse(ReiniciaX, ReiniciaY, 15, 15);
	}
	  
 }    