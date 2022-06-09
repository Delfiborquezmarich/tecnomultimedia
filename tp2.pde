/* Borquez Marich Delfina - 88316/5
          tp nº2
Comisión 1 - José Luis Bugiolachi
link al video:  https://youtu.be/aeMN_BlpiJ0  */
int cant = 1;
int tam;
void setup() {
  size(600, 600);
  tam = width;
}
void draw() {
  background(0);
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
     
      for (int c =tam; c>0; c-=50) {
          if ((i+c+j)%4==0) {
      fill (255);
   
  }else{
   
      fill (0);
       rect(i*tam, j*tam, c, c);
    }
        rect(i*tam, j*tam, c, c);
   
    fill (0);
    }
    }
  }
  ilusion();
}
