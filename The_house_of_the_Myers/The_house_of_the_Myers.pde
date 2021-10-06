import ddf.minim.*; //Se importa minim que sera la biblioteca que usaremos para poner música en el juego.

Minim minim; // se declaran nombre para llamer las funciones
AudioPlayer Menu;
AudioPlayer Nivel1;
AudioSample Puertas;
AudioSample Cofres;


PImage Portada ;
PImage [] Inicio = new PImage[2] ; // Variable para el inicio del juego
PImage [] Mapa = new PImage[1] ;
PImage [] Personaje = new PImage[8] ;
PImage [] Diario = new PImage[4] ;
PImage [] Libre = new PImage[2] ;
PImage [] Cofre = new PImage [5];
PImage Candado ;
PImage intt ;

int Nivel = 0 ; // nivel
int c = 0 ; // Contador escena inicio

presion QW ;

void setup(){
  size(1000,700);
  Portada = loadImage("Portada.png");
  intt = loadImage("Interactua.png");
  Candado = loadImage("/Nivel1/Candado.png");
  QW = new presion() ;
  for(int i = 0; i < Inicio.length ;i++){ // este for se usa para cargar las imagenes que van en el inicio
    Inicio[i] = loadImage("/Nivel1/Inicio_" + i + ".png");}
  for(int i = 0; i < Mapa.length ;i++){ // este for se usa para cargar las imaganes de los mapas de los nivels
    Mapa[i] = loadImage("Nivel_" + i + ".png");}
  for(int i = 0; i < Personaje.length ;i++){ // este for se usa para cargar las imaganes de los mapas de los nivels
    Personaje[i] = loadImage("/Judith/Judith_" + i + ".png");}
  for(int i = 0; i < Diario.length ;i++){ // este for se usa para cargar las imaganes de los mapas de los nivels
    Diario[i] = loadImage("/Judith/Libro_" + i + ".png");}
  for(int i = 0; i < Libre.length ;i++){ // este for se usa para cargar las imaganes de los mapas de los nivels
    Libre[i] = loadImage("/Nivel1/Libreria_" + i + ".png");}
  for(int i = 0; i < Cofre.length ;i++){ // este for se usa para cargar las imaganes de los mapas de los nivels
    Cofre[i] = loadImage("/Nivel1/Cofre_" + i + ".png");}
  minim = new Minim(this);
  Menu = minim.loadFile("/Sonido&Musica/HomicidaParadojico.wav" ); // se  guarda el audio para el boton en la variable player
  Nivel1 = minim.loadFile("/Sonido&Musica/Abuse_In_The_Orphanage.wav" ); // se  guarda el audio para el boton en la variable player
  Cofres = minim.loadSample("/Sonido&Musica/Sonido_Cofre.mp3" ); // se  guarda el audio para el boton en la variable player
  Puertas = minim.loadSample("/Sonido&Musica/Sonido_Puerta.mp3" ); // se  guarda el audio para el boton en la variable player
}
void draw(){ 
  delay(10);
  switch(Nivel){
    case 0 :
    image(Portada, 0 , 0, 1000, 700 );
    Menu.setVolume(0);
    Menu.play();
    if(mouseY < 410 ){ if(mouseY > 310 ){ if( mouseX  < 400){ if( mouseX > 100){if( mouseButton == LEFT  ){
      this.Nivel = 1 ; // Entrar juego
    }}}}}
    if(mouseY < 510 ){ if(mouseY > 415 ){ if( mouseX < 420){ if( mouseX > 80){if( mouseButton == LEFT  ){
      this.Nivel = 8 ; // Entrar creditos
    }}}}}
    break;
    case 1 : // Nivel 1
    Menu.pause();
    Nivel1.play();
    if(c < 2){ // Se muestan las instrucciónes y introducción del juego
      image(Inicio[c], 0 , 0, 1000, 700 );
      if(keyPressed){this.c = c + 1 ; }
    }
    else{
     nivel_1();
    }
    break;
    case 2 : // nivel 2
    nivel_2();
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
