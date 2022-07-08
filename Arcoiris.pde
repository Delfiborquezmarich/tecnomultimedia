float px=20;
float py=571;
float tam=15;
void arcoiris() {
  for (int i=0; i<cant; i++) {
    float distan = dist(mouseX,500,pos[i][1],pos[i][0]);
    int r1=174/2;
    mouseY=500;
    if (distan <r1){
      abS.play();
      pos[i][0] =  -200;

      puntos++; 
   }
     if (puntos==10){

   pos[i][0] =  -100;
      pos[i][1] = -100;    
     pos2[i][0] =  -100;
      pos2[i][1] = -100;
     textFont (unicornF);
  textSize(70);
  textAlign(CENTER);
  fill(255,10,205);
  text("Ganaste! \nYou're a winner", width/2, 150); 
textSize(20);
fill(209,21,139);
  text("Presione 'r' para volver a jugar", width/2, 360); 
}
   
      float distan2 = dist(mouseX,500,pos2[i][1],pos2[i][0]);
    int r2=174/2;
    mouseY=500;
    if (distan2 <r2){
      pos2[i][0] =  -200;
      vidas--;
      amS.play();
   }
     if (vidas==2){
      imageMode(CENTER);
  image (personaje1, mouseX, 500);
  noStroke();
fill(0);
     circle (px*6-6,py,tam);
   circle (px*5,py,tam);
   triangle(px*5-px/2+1,py,px*6+3,py,px*5+7,py+17);}
  if (vidas==1){
      imageMode(CENTER);
  image (personaje2, mouseX, 500);
fill(0);
circle (px*6-6,py,tam);
   circle (px*5,py,tam);
   triangle(px*5-px/2+1,py,px*6+3,py,px*5+7,py+17);
      circle (px*4-6,py,tam);
   circle (px+px*2,py,tam);
   triangle(px*3-px/2+1,py,px*4+3,py,px*3+7,py+17);}
 
    if (vidas==0){

      imageMode(CENTER);
      pos[i][0] =  -100;
      pos[i][1] = -100;    
     pos2[i][0] =  -100;
      pos2[i][1] = -100;
  image (personaje3, mouseX, 500);
fill(0);
circle (px*6-6,py,tam);
   circle (px*5,py,tam);
   triangle(px*5-px/2+1,py,px*6+3,py,px*5+7,py+17);
      circle (px*4-6,py,tam);
   circle (px+px*2,py,tam);
   triangle(px*3-px/2+1,py,px*4+3,py,px*3+7,py+17);
circle (px,py,tam);
   circle (px+px/2+2,py,tam);
   triangle(px-px/2+1,py,px+px+1,py,px+6,py+17);
   textFont (unicornF);
  textSize(70);
  textAlign(CENTER);
 fill(201,2,29);
  text("Perdiste! \nLoser", width/2, 150);
  textSize(20);
fill(209,21,139);
  text("Presione 'r' para volver a jugar", width/2, 360);
 }
  
    image (ab, pos[i][1], pos[i][0] );
    if (pos[i][0]>height-70) {
      vel[i] = random(2, 4);
      pos[i][0] = random(-200, 0);
      pos[i][1] = random(150, width);

    }
    pos[i][0] += vel[i];
  }
  for (int i=0; i<cant; i++) {
    image (am, pos2[i][1], pos2[i][0] );
    if (pos2[i][0]>height-70) {
      vel[i] = random(3, 5);
      pos2[i][0] = random(-200, 0);
      pos2[i][1] = random(150, width);
    }
    pos2[i][0] += vel[i];
  }
}
