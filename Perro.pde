class Perro {
  boolean nosecae;
  float posx, posy;
  int mover;
  float vel = 10; 
  boolean saltar = false;
  PImage [] perroD;
  PImage [] perroI;
  float px=25; 
  float py=480;
  float tam=30;
  boolean direccion;
  Perro( float px, float py ) {


    perroD = new PImage [2];
    perroI= new PImage [2];
    for (int i=0; i < perroD.length; i++) {
      perroD[i] = loadImage("pder"+i+".png");
    }

    for (int i=0; i < perroI.length; i++) {
      perroI[i] = loadImage("pizq"+i+".png");
    }
  }

  void dibujarPerro() {
    imageMode(CENTER);
    if (direccion) {
      image(perroD[mover], px = constrain(px, 10, 600), py);
    } else {
      image(perroI[mover], px = constrain(px, 10, 600), py);
    }
  }

  void moverPerro() {
    if (frameCount%10==0) {
      mover ++;
      mover = mover%2;
    }
    if (keyPressed) {
      if (key==CODED) {
        if (keyCode== RIGHT ) {      
          image(perroD[mover], px = constrain(px, 10, 600), py);
          px += 3;
          direccion = true;
        }  

        if (keyPressed) {
          if (key==CODED) {
            if (keyCode== LEFT ) {      
              image(perroI[mover], px = constrain(px, 10, 600), py);
              px -= 3;
              direccion= false;
            }
          }
        }
      }
    }
  }



  void saltar() {
    if ( saltar ) {
      py = py - vel;
      vel = vel - 0.2;  

      if (py >= 480 ) { 
        py = 480;
        vel = 10;
        saltar = false;  
      }
    }
  }

  void teclas() {
    if (key==CODED) {
      if ( keyCode == UP )
        saltar = true;
    }
  }
  void reboteDer() {
    px -= 2;
  }
  void reboteIzq() {
    px += 2;
  }

  void reboteup() {
    if (py >= 320 && px<260 || px>380){  
    py=320;
      saltar=false;
      nosecae=true; 
      
      if(px <260 && px>380){
        
         py = py - vel;
        vel = vel - 0.2;  
        saltar=true;
        nosecae=false;

      if ( saltar ) {
        py = py - vel;
        vel = vel - 0.2; 
        saltar=true;
        
       
      }
    }}
  }

  void rebotedown() {
    if (py <= 430 ) {  
      py = 480;
      nosecae=false;
      saltar = false;  
    }
  }
} 
