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
int zien;
int[] opslaan={0, 0, 0, 0, 0, 0} ;

void setup() {
  cp = new ControlP5(this);
  size(1000, 1000);
  background(255);
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
  //int[] Kleurenopgeslagen;
  text("score: " + score, 100, 100);
  text("topscore: " + topscore, 700, 100);
  kleurtjerandom();
  println(start);


  if (gekozen) {
    tijd=0;
    tijd = millis();
    println(tijd);
    if (tijd>=5000) {
      switch(opslaan[0]) {
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
    }
  }
}

void KnopBlauw() {
  println("gedrukt");
}

void kleurtjerandom() {
  //int ronde = score + 1;
  //println(opslaan[0]);

  switch(opslaan[0]) {
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
  
  if (start) {
    if (!gekozen) {
      opslaan[score] = int(random(1, 5));
      gekozen = true;
    }
  }
}

void KnopStart() {
  start = true;
}
