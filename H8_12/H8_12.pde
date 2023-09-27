
size(200,200);
background(24,0,234);
rect(0,0,10,10);

for(int o = 0; o < 20; o++){
for(int i = 0; i < 20; i++){
  if((i+o) % 2 == 0){
    fill(0,0,0);
  }
  else{fill(255,255,255);}
  rect(i*10,o*10,10,10);
  
  print(i);
}
}
