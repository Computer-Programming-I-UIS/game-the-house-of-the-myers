import ddf.minim.*; //Se importa minim que sera la biblioteca que usaremos para poner música en el juego.

Minim minim; // se declaran nombre para llamer las funciones
AudioPlayer player;

PImage Portada ;

int Nivel = 0 ;

void setup(){
  size(1000,700);
  Portada = loadImage("Portada.png");
}
void draw(){ 
  switch(Nivel){
    case 0 :
    image(Portada, 0 , 0, 1000, 700 );
    
  }
}
