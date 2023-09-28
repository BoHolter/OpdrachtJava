int xwaarde;
int ywaarde;

void setup(){
 size(500,500);
 frameRate(10); //<>//
 xwaarde = 0;
 ywaarde = 0;
   
}

void draw(){
  background(0,0,0);
 rect(xwaarde,ywaarde,10,10);
 
 xwaarde++;
 ywaarde+=10;
 
 if(ywaarde > height){
   ywaarde = 0;
   
 } 
 if(xwaarde > width){
   xwaarde = 0;
   
 }
   
}
