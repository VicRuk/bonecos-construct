int xp;
int yp; 
int tam;
int vel;
//---
int xp1 = 600, yp1 = 750, tam1 = 250;
int xp2 = 100, yp2 = 250, tam2 = 200;
int isEyesClosed = 255;
int eyeSize;
//---
int x3 = 300, y3 = 300, t3 = 300;
//---
int xp4 = 100, yp4 = 900, tam4 = 200;
//---
int x5 = 100;
int y5 = 100;
int t5 = 100;

void setup() {
  size(1300, 1300);
  xp = 350;
  yp = 350;
  tam = 300;
  vel = 2;
  eyeSize = tam / 10;
}

void draw() {
  background(#41F0EE);
  
  boneco(xp, yp, tam);
  if (xp < width + tam) xp += vel; else xp = -tam;
  
  character(xp2, yp2, tam2);
  if (xp2 < width + tam2) xp2 +=10; else xp2 = -tam2;
  
  personagem(xp1, yp1, tam1);
  if (xp1 < width + tam1) xp1 += 9; else xp1 = -tam1;
  
  personagemA(x3, y3, t3);
  if (x3 < width + t3) x3 += 8; else x3 = -t3;
  
  VicRukGeometry(xp4, yp4, tam4);
  if (xp4 < width + tam4) xp4 += 5; else xp4 = -tam4;
  
  personagem3(x5, y5, t5);
  if (x5 < width + t5) x5 += 7; else x5 = -t5;
}

void boneco(int xp, int yp, int tam) {
  strokeWeight(5);
  
  //Cabeça
  fill(#8C8E8E);
  rect(xp, yp, tam + 50, tam);
  
  //Olhos
  fill(#0A14FC);
  square(xp + 50, yp + 70, tam - 250);
  square(xp + 240, yp + 70, tam - 250);
  
  //Nariz
  fill(#FC0A0E);
  circle(xp + 170, yp + 160, tam - 260);
  
  //Boca
  fill(#F8FC0A);
  rect(xp + 80, yp + 190, tam - 120, tam - 225);
  
  xp = xp + 1;
  println("xp=" + xp);
}

void personagem(int xp1, int yp1, int tam1) {
  //face1
  fill(255);
  circle(xp1, yp1, tam1);
  
  //eyes1
  fill(0);
  circle(xp1 - tam1 / 4, yp1, tam1 / 6);
  circle(xp1 + tam1 / 4, yp1, tam1 / 6);
  fill(255);
  circle(xp1 - tam1 / 4, yp1, tam1 / 15);
  circle(xp1 + tam1 / 4, yp1, tam1 / 15);
  
  xp1 = xp1 + 1;
  println("xp1=" + xp1);
}

void character(int xp2, int yp2, int tam2) {
  //face2
  fill(255);
  circle(xp2, yp2, tam2);

  //eye2
  fill(isEyesClosed);
  circle(xp2 - tam2 / 4, yp2, tam2 / 2);
  circle(xp2 + tam2 / 4, yp2, tam2 / 2);
  
  //eyeball2
  fill(0);
  circle(xp2 - tam2 / 4, yp2, eyeSize);
  circle(xp2 + tam2 / 4, yp2, eyeSize);
  
  xp2 = xp2 + 4;
  println("xp2=" + xp2);
}
void personagemA (int x3, int y3, int t3) {
  fill (255);
  circle (x3, y3, t3);
  fill (0);
  circle(x3 - t3/12,y3,t3/11);
  circle(x3 + t3/12,y3,t3/11);
  fill (255);
  x3 = x3 + 2;
    println("x3=" + x3);
}
void VicRukGeometry(int xp4, int yp4, int tam4) {
  color insideStart = color(255, 207, 1);
  color insideEnd = color(255, 167, 0);
  color element = color(0, 255, 255);
  
  pushMatrix();
  translate(xp, yp4);
  
  fill(0);
  stroke(0);
  strokeWeight(10);
  rect(-106, -105, 212, 212);
  
  for (int i = -100; i <= 100; i++) {
    float inter = map(i, -100, 100, 0, 1);
    color c = lerpColor(insideStart, insideEnd, inter);
    stroke(c);
    line(i, -100, i, 100);
  }

  fill(element);
  stroke(0);
  strokeWeight(7);
  rect(-60, -60, 40, 40);
  rect(20, -60, 40, 40);
  rect(-75, 5, 150, 30);
  
  popMatrix();
  
  xp4 = xp4 + 7;
    println("x4p=" + xp4);
}

void personagem3(float x5, float y5, color t5) {
  fill(255,0,0);
  circle(x5,y5,150);
  fill(0,0,255);
  circle(x5+30,y5-10,50);
  circle(x5-30,y5-8,50);
  rect(x5-50,y5+40,100,10);
  x5 = x5 + 15;
    println("x5=" + x5);
}
