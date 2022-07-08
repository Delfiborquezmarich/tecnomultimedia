/*Borquez Marich Delfina (88316/5)
TP1 - Animando con código
Comisión 1 - José Luis Bugiolachi
Link al video: https://youtu.be/3WwDjWUPwlY
*/
import processing.sound.*;

SoundFile ambientacion;
SoundFile abS;

SoundFile amS;


int cant =3;
PImage fondo;
PImage ab;
PImage am;
int estado;
PImage personaje;
float [][] pos = new float[cant][2];
float [][] pos2 = new float[cant][2];
float [] vel = new float[cant];
PFont unicornF;
PFont deco;
int puntos;
PImage personaje1;
PImage personaje2;
PImage personaje3;
float vidas =3;
PFont punts;
void setup () {
  size (600, 600);
  fondo = loadImage ("Fondo rosa.png");
  personaje = loadImage ("Unicornio.png");
  unicornF= createFont ("Unicorn Magic.ttf", 20);
  deco= createFont ("Deco.otf", 60);
  for (int i=0; i<cant; i++) {
    vel[i] = random(2, 3);
    pos[i][0] = random(-200, 0);
    pos[i][1] = random(-100, height);
    pos2[i][0] = random(-200, 0);
    pos2[i][1] = random(-100, height);
    ab = loadImage ("ab.png");
    am=loadImage ("am.png");
    puntos=0;

   personaje1 = loadImage ("Unicornio muriendo1.png");
   personaje2 = loadImage ("Unicornio muriendo2.png");
   personaje3 = loadImage ("Unicornio muriendo3.png");
   punts= loadFont ("puntos.vlw");
  
  }
  ambientacion = new SoundFile(this, "music2.mp3");
 ambientacion.amp(0.2);
  ambientacion.loop();

   abS = new SoundFile(this, "ab.mp3");
   abS.amp(0.5);
    amS = new SoundFile(this, "am.mp3");
     
   }


void draw() {
  
  if (estado==0) {
    nombrejuego ();
  } else if  (estado==1) {
    instrucciones();
  } 
  if(key==ENTER){   
    
    juego();
  }
  

println(puntos +"p");

}


void mouseClicked () {
  estado++;
}

void juego () {
  imageMode(CORNER);
  image (fondo, 0, 0);
  imageMode(CENTER);
  image (personaje, mouseX, 500);
  textFont (punts,30);
textSize(25);
fill(0);
text ("puntos " + puntos, 550,595);
  arcoiris();

  vidas(20,571,15);
}
 
 void keyReleased(){
   if (key== 'R'||key== 'r');
frameCount=0;
for (int i=0; i<cant; i++) {
 
    vel[i] = random(2, 3);
    pos[i][0] = random(-200, 0);
    pos[i][1] = random(-100, height);
    pos2[i][0] = random(-200, 0);
    pos2[i][1] = random(-100, height);
    ab = loadImage ("ab.png");
    am=loadImage ("am.png");}
cant = 3;
estado = 0;
puntos = 0;
vidas = 3;
 }
