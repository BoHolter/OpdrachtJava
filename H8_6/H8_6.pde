size(500,500);
background(255,255,255);

int C = 90;

for(int i = 0; i<5; i++){
   ellipse( 250 - C/2,250, C,C);
   C-=20;
}
