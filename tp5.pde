/*Borquez Marich, Delfina 
       88316/5 
 tp5 - Comisión 1
 URL DEL VIDEO: */
 import processing.sound.*;
SoundFile ambientacion;

Inicial i;
void setup () {
  size(600, 600);
  i = new Inicial ();
 ambientacion = new SoundFile(this, "music.mp3");
 ambientacion.amp(0.2);
ambientacion.loop();
 
}

void draw() {
  
  i.dibujarestados();
}

void keyPressed(){
  i.mover();
 
i.cambiarpantalla();
}
