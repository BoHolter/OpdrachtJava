String zoekNaam = "Piet";
Boolean gevonden = false;
String[] namen = {"Pietje","Lars","Rosane","Alfred","Freddie"};



void setup(){
  for(int i = 0; i < namen.length;i++){
    if(zoekNaam == namen[i]){
      gevonden = true;
    }
  }
  if(gevonden){
    println("ja de naam " + zoekNaam + " bestaat!");
  }else{
    println("Helaas de naam " + zoekNaam + " ken ik niet");
  }
  
}
