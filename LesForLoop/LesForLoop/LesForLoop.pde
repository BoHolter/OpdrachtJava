/*
For Loop Opdracht

Docent Piet wilt graag zijn klaslokaal grapisch schetesen. Piet is een pro programmeur en wilt dit graag doen in door het te programmeren.
Het klaslokaal is 20x20 meter. Elke 10 pixels is 1 meter. Een tafel is 1x1 meter.

Hij wilt graag dat de tafales in groepjes van twee hebben. Tussen de eerste rij met tafels en de tweede rij past er een tafel tussen.
Het hele klaslokaal zit vol met tafels in deze opstelling. 
Maak dit programma.

Bonus:
  Piet loopt graag en doet dat regelmatig door zijn les. Hij vindt het rechte pad saai worden hij wilt niet steeds lopen als een Toren in schaken.
  Hij wilt een keer schuin door het klaslokaal lopen zoals een Bischop in schaken. Echter gaat het lastig met al die tafels in de weg
  Zorg ervoor dat de tafels zo opgesteld worden dat Piet schuin door zijn klas kan lopen zoals een Bischop.
  Er vallen 6 tafels weg door de nieuwe opstelling.

*/

size(200,200);
background(24,0,234);
rect(0,0,10,10);

for(int o = 0; o < 10; o++){
for(int i = 0; i < 20; i++){
  if(i%3 != 2){
  rect(i*10,o*20,10,10);
  
  print(i);}
}
}
