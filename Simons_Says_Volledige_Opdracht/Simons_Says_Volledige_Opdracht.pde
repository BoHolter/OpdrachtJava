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
//boolean zwart = false;
int tijd = 0;
int volgendeTijd = 0;
int zien = 0;
int[] opslaan={0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

int ingedrukt = 0;
boolean player = false;
//boolean rondeOver = false;
boolean verloren = false;

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
  text("score: " + score, 400, 100);
  text("topscore: " + topscore, 700, 100);

  kleurtjerandom();
  //println(start);
  //Rondeover();

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
      if (zien >=  30 || opslaan[zien] == 0) {
        gekozen = false;
        player = false;
        zien = 0;
        //score++;
      }
    }
  }
}
void kleurtjerandom() {
  //int ronde = score + 1;
  // println(opslaan[zien]);
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
    if (!gekozen && player) {
      volgendeTijd = millis()+1000;
      opslaan[score] = int(random(1, 5));
      zien = 0;
      gekozen = true;
    }
  }
}

void KnopStart() {
  start = true;
  player = true;
  Start.hide();
  score = 0;
  ingedrukt = 0 ;
  for (int i = 0; i<30; i++) {
    opslaan[i] = 0;
  }
}

void KnopGroen() {
  Check(2);
  //println("Gedrukt");
}
void Knopje() {
  //println("Gedrukt");
  Check(1);
}
void KnopGeel() {
  Check(3);
  //println("Gedrukt");
}
void KnopBlauw() {
  Check(4);
  //println("Gedrukt");
}

void Check(int knop) {
  if (start && knop == opslaan[ingedrukt]) {
    ingedrukt++;
    if (ingedrukt >= opslaan.length || opslaan[ingedrukt] == 0 ) {
      score++;
      ingedrukt = 0;
      start = true;
      player = true;
    }
  } else {
    start = false;
    player = false;
    topscore = score ;
    Start.show();
  }
}

/*
ik vond dit een heel leuk project maar soms had ook de motivatie niet maar toch is het gelukt en ik ben heel ongeduldig omdat het heel lang duurt messtal maar omdat ik dit leuk vind is dat minder zo erg dan normaal 
en als het werkt wordt ik er heel blij van en nog meer als ik het aan me moeder en vader laat zien die het ook heel gaaf vinden maar er niks van begrijpen 

en bij de meeste code moet ik het ff lezen om het te begrijpen maat het meeste begrijp ik wel 
en er zit nog een bug in die ik niet weet om te verhelpen maar ik wel graag zou willen verhelpen .

*/
