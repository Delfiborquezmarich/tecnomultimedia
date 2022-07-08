void vidas(float px,float py,float tam){
  if (vidas==3){
  fill(275, 5, 125);
  noStroke();
  circle (px,py,tam);
   circle (px+px/2+2,py,tam);
   triangle(px-px/2+1,py,px+px+1,py,px+6,py+17);
   
    circle (px*4-6,py,tam);
   circle (px+px*2,py,tam);
   triangle(px*3-px/2+1,py,px*4+3,py,px*3+7,py+17);
   
     circle (px*6-6,py,tam);
   circle (px*5,py,tam);
   triangle(px*5-px/2+1,py,px*6+3,py,px*5+7,py+17);}
   if (vidas==2){
  fill(275, 5, 125);
  noStroke();
  circle (px,py,tam);
   circle (px+px/2+2,py,tam);
   triangle(px-px/2+1,py,px+px+1,py,px+6,py+17);
   
    circle (px*4-6,py,tam);
   circle (px+px*2,py,tam);
   triangle(px*3-px/2+1,py,px*4+3,py,px*3+7,py+17);}
     if (vidas==1){
  fill(275, 5, 125);
  noStroke();
  circle (px,py,tam);
   circle (px+px/2+2,py,tam);
   triangle(px-px/2+1,py,px+px+1,py,px+6,py+17);}
   
}
