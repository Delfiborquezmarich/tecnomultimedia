class Inicial {
int pantalla;
PImage fondoI;
PImage fondo2;
PFont letra;
PImage ganar;
PImage perder;
PImage creditos;
 int croquetas=0;
 int segundos=15;



  Fondo f;
  Perro p;

  Plat pl[] = new Plat [2];
  Comida c[] = new Comida [16];

  Inicial() {
    p = new Perro(25,480);
    f= new Fondo ();

   letra= createFont ("letra.vlw",20);    
   fondoI =loadImage ("inicio.jpg");
   fondo2 = loadImage ("fondo2.jpg");
   ganar= loadImage ("ganar.jpg");
   perder= loadImage ("perder.jpg");
   creditos = loadImage("creditos.jpg");
    pl[0] = new Plat (50, 380);
    pl[1] = new Plat (400, 380);


    c[0] = new Comida (150, 500);
    c[1] = new Comida (250, 500);
    c[2] = new Comida (350, 500);
    c[3] = new Comida (470, 500);
    c[4] = new Comida (540, 500);
    c[5] = new Comida (70, 320);
    c[6] = new Comida (110, 320);
    c[7] = new Comida (160, 320);
    c[8] = new Comida (210, 320);
    c[9] = new Comida (255, 320);
    c[10] = new Comida (410, 320);
    c[11] = new Comida (450, 320);
    c[12] = new Comida (490, 320);
    c[13] = new Comida (530, 320);
    c[14] = new Comida (570, 320);
    c[15] = new Comida (535, 42);
  }
  
 void plataforma (){
   for (int i=0; i< pl.length; i++) { // todo dentro del for
      pl[i].dibujarPlat();

      if (contacto(p.px, p.py, p.tam, pl[i].px, pl[i].py, pl[i].ancho, pl[i].alto)) {     
        if (p.py+p.tam>pl[i].py && p.py<pl[i].py+pl[i].alto/2 ) {
          p.reboteup();
        }
        if (p.py<pl[i].py+pl[i].alto && p.py>pl[i].py ) {
          p.rebotedown();
        }
        }}
      
    }
     boolean contacto(float px, float py, float tam, float x, float y, float ancho, float alto ) {
    if (px+tam>x && px <x+ancho && py+tam*2>y && py<y+alto) {
      return true;
    } else {
      return false;
    }
  }
  
  void dibujarestados(){
   
  if (pantalla ==0){
   
  imageMode(CORNER);
  image (fondoI,0,0);
  fondoI.resize(600,600);
  textFont(letra);
  textAlign (CENTER);
  textSize(30);
  fill(0);
  
  
text("Presiona ENTER \n para leer las instrucciones", width/2, 250);}

if (pantalla==1){

 imageMode(CORNER);
image (fondo2,0,0);
  textAlign (CENTER);
  textSize(35);
  fill(255);
text("Recoge las 15 croquetas \n antes de que se acabe el tiempo!!", width/2, 300);
text("Presiona SPACE para jugar", width/2, 450);}

  if(  pantalla==2){
    
   f.dibujarFondo();
    p.dibujarPerro();
    p.moverPerro();
 p.saltar();
   i.dibujartiempo();
 i.correrTiempo();
    pl[0].dibujarPlat();
    pl[1].dibujarPlat();
    plataforma();
    c[0].dibujarComida();
    c[1].dibujarComida();
    c[2].dibujarComida();
    c[3].dibujarComida();
    c[4].dibujarComida();
    c[5].dibujarComida();
    c[6].dibujarComida();
    c[7].dibujarComida();
    c[8].dibujarComida();
    c[9].dibujarComida();
    c[10].dibujarComida();
    c[11].dibujarComida();
    c[12].dibujarComida();
    c[13].dibujarComida();
    c[14].dibujarComida();
    c[15].dibujarComida();
  
    for (int i=0; i< c.length ; i++){
   imageMode(CENTER);
      c[i].dibujarComida();
    
      float col = dist (c[i].cx, c[i].cy, p.px,p.py);
      if (col<=30){
         
        c[i].cy=-100;
        croquetas++;

      }
        if (croquetas<15&& segundos==0){
          pantalla=4;} 
          if (croquetas ==15 && segundos >0){
          pantalla=3;
          }
          
     
}}
if (pantalla==3){
imageMode(CORNER);
image (ganar,0,0);
ganar.resize(600,600);
  textAlign (CENTER);
  textSize(35);
  fill(255,93,200);
text("HAS GANADO", width/2, 500);
text("Pulsa C para ir a los creditos", width/2, 550);

}
if (pantalla==4){
    imageMode(CORNER);
  i.perder();


}

if (pantalla==5){

   imageMode(CORNER);
  image (creditos,0,0);
  creditos.resize(600,600);
  fill(0,0,255);
  text("Pulsa R para reinicar", width/2, 500);
   pl[0] = new Plat (50, 380);
    pl[1] = new Plat (400, 380);

  croquetas=0;
  segundos=15;
p.px=25;
p.py=480;
p.vel=10;
p.saltar = false;
pl[0] = new Plat (50, 380);
    pl[1] = new Plat (400, 380);

   c[0] = new Comida (150, 500);
    c[1] = new Comida (250, 500);
    c[2] = new Comida (350, 500);
    c[3] = new Comida (470, 500);
    c[4] = new Comida (540, 500);
    c[5] = new Comida (70, 320);
    c[6] = new Comida (110, 320);
    c[7] = new Comida (160, 320);
    c[8] = new Comida (210, 320);
    c[9] = new Comida (255, 320);
    c[10] = new Comida (410, 320);
    c[11] = new Comida (450, 320);
    c[12] = new Comida (490, 320);
    c[13] = new Comida (530, 320);
    c[14] = new Comida (570, 320);
    c[15] = new Comida (535, 42);
}}


void dibujartiempo (){
text(segundos, 25, 50);
}

 void correrTiempo() {
 
    if (frameCount%60==0) {
      segundos--;
    }
    if (segundos >=6) {
      textSize(30);
      fill (0);
    }else {
    fill (255,0,0);
    textSize(35);
    }
    text(segundos, 25, 50);

    } 
    
    void perder (){
    if (segundos ==0) {
      perder.resize(600,600);
    image (perder,0,0);
   fill(255);
text("HAS PERDIDO", width/2, 500);
text("Pulsa C para ir a los creditos", width/2, 550);

    }
    }
    
void cambiarpantalla(){
if(pantalla ==0){
  if(key==ENTER){
   pantalla=1;
}}
if(pantalla ==1){
  if(key==' '){
   pantalla=2;
}}
if(pantalla ==3 || pantalla ==4){
  if(key=='c'){
   pantalla=5;
}}
if (pantalla==5){
if(key=='R'||key=='r'){
   pantalla=0;
    }}


}
  
  void mover(){
      
       p.teclas();
  }
} 

  class Plat {
PImage plat;
int px, py;
int ancho=200;
int alto=60;
Plat(int px, int py){ 
  imageMode(CORNER);
   plat = loadImage ("plataforma.png");
    this.px = px;
    this.py = py;
}


void dibujarPlat(){
  imageMode(CORNER);
image (plat, px-20, py-20);

}}
  
class Comida {
  PImage comida;
  int cx, cy;
 
  Comida (int cx, int cy) {

    comida = loadImage ("croquet.png");
    this.cx = cx;
    this.cy = cy;
  }

  void dibujarComida () {
    imageMode(CENTER);
    fill(0);
    textSize(30);
    text(i.croquetas ,570,50);
    image (comida, cx, cy);
  }

}
