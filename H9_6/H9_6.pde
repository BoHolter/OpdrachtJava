

void setup(){
 size(500,500); 
  
}

void draw(){
background(255,255,255);
int C = 100;
for(int i = 0; i<5;i++){
  ellipse(200 - C/2,200,C,C);
  C-=20;
 }
}
