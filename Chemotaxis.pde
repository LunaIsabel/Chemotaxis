 //declare bacteria variables here
Bacteria[] group = new Bacteria[700];
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
		ellipse(ReiniciaX, ReiniciaY, 3, 3);
	}
	void mousePressed(){
		for(int i = 0; i < group.length; i++){
			background(0, 0, 0);
			group[i].ReiniciaX = (int)(Math.random() * 51) - 25;
			group[i].ReiniciaY = (int)(Math.random() * 51) - 25;
		}
	}	   
 }    