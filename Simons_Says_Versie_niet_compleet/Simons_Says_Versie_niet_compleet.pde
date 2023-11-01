import controlP5.*;

ControlP5 cp;
Button Rood;
Button Geel;
Button Groen;
Button Blauw;
Button Start;

int score = 0;
int topscore = 0;
//int getal;
boolean start = false;
boolean gekozen = false;
boolean zwart = false;
int tijd = 0;
int volgendeTijd = 0;
int zien = 0;
int[] opslaan={0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
int ingedrukt=0;
boolean test = false;
boolean rondeOver = false;

void setup() {
  cp = new ControlP5(this);
  size(1000, 1000);
 
  Rood = cp.addButton("Knopje")
    .setSize(250, 250)
    .setPosition(250, 250)
    .setColorBackground(color(255, 0, 0))
    .setColorForeground(color(255, 0, 0))
    .setColorActive(color(255, 60, 0))
    .setCaptionLabel("");

  Groen = cp.addButton("KnopGroen")
    .setSize(250, 250)
    .setPosition(505, 250)
    .setColorBackground(color(0, 225, 0))
    .setColorForeground(color(0, 225, 0))
    .setColorActive(color(0, 255, 100))
    .setCaptionLabel("");

  Geel = cp.addButton("KnopGeel")
    .setSize(250, 250)
    .setPosition(505, 505)
    .setColorBackground(color(255, 255, 0))
    .setColorForeground(color(255, 255, 0))
    .setColorActive(color(255, 225, 0))
    .setCaptionLabel("");

  Blauw = cp.addButton("KnopBlauw")
    .setSize(250, 250)
    .setPosition(250, 505)
    .setColorBackground(color(0, 0, 255))
    .setColorForeground(color(0, 0, 255))
    .setColorActive(color(0, 100, 255))
    .setCaptionLabel("");

  Start = cp.addButton("KnopStart")
    .setSize(200, 100)
    .setPosition(250, 805)
    .setColorBackground(color(255, 100, 0))
    .setColorForeground(color(255, 100, 0))
    .setColorActive(color(255, 50, 0))
    .setCaptionLabel("Start");


  fill(0, 0, 0);
  textSize(50);
}
 
  
void draw() {
   background(255);
  //int[] Kleurenopgeslagen;
  text("score: " + score, 100, 100);
 text("topscore: " + topscore, 700, 100);
 
  kleurtjerandom();
  //println(start);


  if (gekozen) {
    tijd = millis();
   // println(tijd);
    if (tijd>=volgendeTijd) {
      switch(opslaan[zien]) {
      case 1:
        Rood.setColorBackground(color(255, 0, 0))
          .setColorForeground(color(255, 0, 0))
          .setColorActive(color(255, 60, 0));
        break;
      case 2:
        Groen.setColorBackground(color(0, 225, 0))
          .setColorForeground(color(0, 225, 0))
          .setColorActive(color(0, 255, 100));
        break;
      case 3:
        Geel.setColorBackground(color(255, 255, 0))
          .setColorForeground(color(255, 255, 0))
          .setColorActive(color(255, 225, 0));
        break;
      case 4:
        Blauw.setColorBackground(color(0, 0, 255))
          .setColorForeground(color(0, 0, 255))
          .setColorActive(color(0, 100, 255));
        break;
      }
      volgendeTijd = millis()+1000;
      zien++;
      if (zien >= 5 || opslaan[zien] == 0) {
        gekozen = false;
        test = false;
        zien = 0;
        //score++;
        
      }
    }
  }
}
void kleurtjerandom() {
  //int ronde = score + 1;
 // println(opslaan[0]);
  if (gekozen) {
    switch(opslaan[zien]) {
    case 1:
      Rood.setColorBackground(color(0, 0, 0))
        .setColorActive(color(0, 0, 0))
        .setColorForeground(color(0, 0, 0));
      break;
    case 2:
      Groen.setColorBackground(color(0, 0, 0))
        .setColorActive(color(0, 0, 0))
        .setColorForeground(color(0, 0, 0));
      break;
    case 3:
      Geel.setColorBackground(color(0, 0, 0))
        .setColorActive(color(0, 0, 0))
        .setColorForeground(color(0, 0, 0));
      break;
    case 4:
      Blauw.setColorBackground(color(0, 0, 0))
        .setColorActive(color(0, 0, 0))
        .setColorForeground(color(0, 0, 0));
      break;
    }
  }

  if (start) {
    if (!gekozen && test) {
      volgendeTijd = millis()+1000;
      opslaan[score] = int(random(1, 5));
      zien = 0;
      gekozen = true;
    }
  }
}

void KnopStart() {
  start = true;
  test = true;
}

void KnopGroen(){
  Check(2);
println("Gedrukt");

}
void Knopje(){
println("Gedrukt");
Check(1);
}
void KnopGeel(){
Check(3);
//println("Gedrukt");
}
void KnopBlauw(){
Check(4);
println("Gedrukt");
}

void Check(int knop){
  if(knop == opslaan[ingedrukt]){
    ingedrukt++;
    if(ingedrukt >= opslaan.length || opslaan[ingedrukt] == 0 ){
      score++;
      ingedrukt = 0;
      start = true;
      test = true;
    }
  }
  
}

/*void score() {
 fill(0,0,0);
 text("score: " + score, 100, 100);
 text("topscore: " + topscore, 700, 100);
 
 }*/ 
