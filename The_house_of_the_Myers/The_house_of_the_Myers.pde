import ddf.minim.*; //Se importa minim que sera la biblioteca que usaremos para poner música en el juego.

Minim minim; // se declaran nombre para llamer las funciones
AudioPlayer player;

PImage Portada ;
PImage [] Inicio = new PImage[3] ; // Variable para el inicio del juego
PImage [] Mapa = new PImage[1] ;
PImage [] Personaje = new PImage[8] ;
PImage [] Diario = new PImage[2] ;
PImage [] Libre = new PImage[2] ;
int Nivel = 1 ; // nivel
int c = 0 ; // Contador escena inicio

presion QW ;

void setup(){
  size(1000,700);
  Portada = loadImage("Portada.png");
  QW = new presion() ;
  for(int i = 0; i < Inicio.length ;i++){ // este for se usa para cargar las imagenes que van en el inicio
    Inicio[i] = loadImage("Inicio_" + i + ".png");}
  for(int i = 0; i < Mapa.length ;i++){ // este for se usa para cargar las imaganes de los mapas de los nivels
    Mapa[i] = loadImage("Nivel_" + i + ".png");}
  for(int i = 0; i < Personaje.length ;i++){ // este for se usa para cargar las imaganes de los mapas de los nivels
    Personaje[i] = loadImage("Judith_" + i + ".png");}
  for(int i = 0; i < Diario.length ;i++){ // este for se usa para cargar las imaganes de los mapas de los nivels
    Diario[i] = loadImage("Libro_" + i + ".png");}
  for(int i = 0; i < Libre.length ;i++){ // este for se usa para cargar las imaganes de los mapas de los nivels
    Libre[i] = loadImage("Libreria_" + i + ".png");}
}
void draw(){ 
  switch(Nivel){
    case 0 :
    image(Portada, 0 , 0, 1000, 700 );
    if(mouseY < 410 ){ if(mouseY > 310 ){ if( mouseX  < 400){ if( mouseX > 100){if( mouseButton == LEFT  ){
      this.Nivel = 1 ; // Entrar juego
    }}}}}
    if(mouseY < 510 ){ if(mouseY > 415 ){ if( mouseX < 420){ if( mouseX > 80){if( mouseButton == LEFT  ){
      this.Nivel = 8 ; // Entrar creditos
    }}}}}
    break;
    case 1 : // Nivel 1
    if(c < 3){ // Se muestan las instrucciónes y introducción del juego
      image(Inicio[c], 0 , 0, 1000, 700 );
      if(keyPressed){this.c = c + 1 ; }
    }
    else{
     nivel_1();
    }
    break;
    case 2 : // nivel 2
    rect(0,0,30,20);
    break;
    case 8 : //Creditos
    rect(0,0,30,20);
    break;
  }
}
class presion{
  presion(){}
  void display(){
    textAlign(CENTER, TOP);
    textSize(32);
    text("Presione 'Z' para interactuar ", 500, 630);
  }
}
