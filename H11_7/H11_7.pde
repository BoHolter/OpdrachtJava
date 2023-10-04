  int[] Marray = new int[10];
  int teller = 0 ;
  int zoekgetal = 5;
  
  
void setup(){
  Marray[0] =12;     
  Marray[1] =10;  
  Marray[2] =5; 
  Marray[3] =23;
  Marray[4] =5;
  Marray[5] = 134;
  Marray[6] =5;
  Marray[7] =7;
  Marray[8] =9;
  Marray[9] =8;
   for(int i = 0; i < Marray.length;i++){
   if(Marray[i] == 5){
    teller++ ;
     
   }
   }
println(zoekgetal+" Dit komt zo vaak voor "+teller);
}
