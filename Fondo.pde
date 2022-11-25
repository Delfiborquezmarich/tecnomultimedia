class Fondo {
  PImage fondo;
  float fx;
  Fondo() {
   
    fx=-10;
    fondo = loadImage ("fondo0.jpg");
  }
  
  void dibujarFondo () {
imageMode(CORNER);
    image (fondo, 0, 0);
  }
  
}
