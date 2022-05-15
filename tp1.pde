/*Borquez Marich Delfina (88316/5)
TP1 - Animando con código
Comisión 1 - José Luis Bugiolachi
*/


PImage Encanto;
int opacidad;
PImage mariposa;
PFont titulo; 
int px;
int tam;
float tone;
float px1;
float py;
PImage puerta;
int posY;
PImage todos;
int py2;
PImage mirabel;
float posY1;
PImage fin;
float px2;
  void setup (){
size (600,338);
background (0);
 
Encanto  = loadImage ("Encanto puertas.jpg");
opacidad= 255;
mariposa = loadImage ("mariposa.png");
 titulo = createFont ("encanto.ttf", 90);
   noCursor();
   cursor (mariposa);
   px = width/2;
   tam = 90;
   puerta = loadImage ("puerta.jpg");
   posY = 400;
   todos = loadImage ("todos.jpg");
   py2 = 400;
   mirabel = loadImage ("mirabel.jpeg");
   posY1=-300;
   fin = loadImage ("fin.jpg");
   px2 =-100;
};

 void draw (){
  if (frameCount>0 && frameCount<300){
   image (Encanto, 0,0);}
   if (frameCount <50){
     tint (255);
   }else{ 
     tint (opacidad);
opacidad--;
println (frameCount);
 }
 if (frameCount >300){
  noTint();
  noStroke();
   fill(0); 
   rect(0,80,600,120);
   fill(247,247,22);
   textFont (titulo);
   textSize(tam);
   textAlign (CENTER);
   text ("ENCANTO", px, height/2);}
   if (frameCount >305){
  px1 = random(width);
  py = random(height);
   tone = random (0,255);

  if (px<width && py<height/5) { 
  noStroke();
    fill(247,247,22,tone);
    ellipse(px1, py, 20, 20);
}
 if (px<width && py>height/1.5) { 
  noStroke();
    fill(247,247,22,tone);
    ellipse(px1, py, 20, 20);
}}
   
  if (frameCount>400 && frameCount <470){
   
   tam++ ;}
   if (frameCount >=485){
     background(0);}
     if (frameCount >485){
       tint(200);
       image (puerta,0,-200);

       textFont (titulo);
       fill (255);
   textSize(17);
  stroke (255);
   textAlign (CENTER);
       text ("Jessica Darrow - Luisa Madrigal"
+"\n\nDiane Guerrero - Isabela Madrigal"
+"\n\nWilmer Valderrama - Agustín Madrigal"
+"\n\nAngie Cepeda - Julieta Madrigal"
+"\n\nJohn Leguizamo - Bruno Madrigal"
+"\n\nMaría Cecilia Botero - Alma Madrigal"
+"\n\nStephanie Beatriz  - Mirabel Madrigal",width/2,posY1);
posY1++;}
if (frameCount>1100){
text ("Carolina Gaitán - Pepa Madrigal"
+"\n\nMauro Castillo - Félix Madrigal"
+"\n\nAdassa - Dolores Madrigal"
+"\n\nRhenzy Feliz - Camilo Madrigal"
+"\n\nRavi-Cabot Conyers - Antonio Madrigal"
+"\n\nMaluma - Mariano Guzmán"
+"\n\nJuan Castano - Osvaldo Orozco", width/2, posY);
posY--;}
if (frameCount >1400 && frameCount <1900){
noTint();
image (todos, 200, py2);
py2--;
     }
     if (frameCount >1900){
       image (mirabel,0,-100);
        textFont (titulo);
       fill (255);
   textSize(30);
   textLeading(15);
  stroke (255);
        text("Dirección"
        +"\n\nClark Spencer"
        +"\n\nYvett Merino",500,210);
     }
   if( frameCount >2050 && frameCount<2450){
     image (fin,0,0);
     textFont (titulo);
       fill (255);
   textSize(20);
   textLeading(15);
   text("Musica"
   +"\n\nLin-Manuel Miranda"
   +"\n\nCarlos Vives", px2,250);}
  if(frameCount>2050 && frameCount<2250){ px2++;
  
   }
   if (frameCount >2400||frameCount >2400){
    background (0);}
    println (mouseY, "mY");
   println (mouseX, "mX");
 };
 
 void mousePressed (){
   frameCount=0;
    opacidad= 255;
     px = width/2;
   tam = 90;
   posY = 400;
   py2 = 400;
   posY1=-300;
   px2 =-100;
   
 }
