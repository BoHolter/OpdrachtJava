size(500,500);
background(255,255,255);

int C = 500;

for(int i = 0; i<50; i++){
   ellipse( 500 - C/2, 500 - C/2
,C,C);
   C-=10;
}
