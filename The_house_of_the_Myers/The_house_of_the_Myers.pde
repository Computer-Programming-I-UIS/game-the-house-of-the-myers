import ddf.minim.*; //Se importa minim que sera la biblioteca que usaremos para poner música en el juego.

Minim minim; // se declaran nombre para llamer las funciones
AudioPlayer Menu;
AudioPlayer Nivel1;
AudioSample Puertas;
AudioSample Cofres;


PImage Portada ;
PImage [] Inicio = new PImage[2] ; // Variable para el inicio del juego
PImage [] Mapa = new PImage[2] ; // contiene los mapas del juego
PImage [] Personaje = new PImage[8] ; // animación personaje
PImage [] Diario = new PImage[4] ; // contiene las imagenes del diario
PImage [] Libre = new PImage[2] ; // es la libreria
PImage [] Cofre = new PImage [5]; // contiene los diferentes cofres
PImage [] Sustos = new PImage [7]; // contiene las imagenes de myers sustos
PImage [] creditoss = new PImage[2] ;
PImage [] Lavaplatoss = new PImage[10] ; // contiene imagenes y animación del lavaplatos
PImage Candado ;
PImage intt ;

int Nivel = 2 ; // nivel
int c = 0 ; // Contador escena inicio
int RR = 0 ;
int xc = 0;
int CRE = 1000;
int sus;
int suss;

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
  for(int i = 0; i < creditoss.length ;i++){ // este for se usa para cargar las imaganes de los mapas de los nivels
    creditoss[i] = loadImage("/Creditos/Creditos_" + i + ".png");}
  for(int i = 0; i < Sustos.length ;i++){ // este for se usa para cargar las imaganes de los mapas de los nivels
    Sustos[i] = loadImage("Sangre_" + i + ".png");}
  for(int i = 0; i < Lavaplatoss.length ;i++){ // este for se usa para cargar las imaganes de los mapas de los nivels
    Lavaplatoss[i] = loadImage("/Nivel2/Lava_" + i + ".png");}
  minim = new Minim(this);
  Menu = minim.loadFile("/Sonido&Musica/HomicidaParadojico.wav" ); // se  guarda el audio para el boton en la variable player
  Nivel1 = minim.loadFile("/Sonido&Musica/Abuse_In_The_Orphanage.wav" ); // se  guarda el audio para el boton en la variable player
  Cofres = minim.loadSample("/Sonido&Musica/Sonido_Cofre.mp3" ); // se  guarda el audio para el boton en la variable player
  Puertas = minim.loadSample("/Sonido&Musica/Sonido_Puerta.mp3" ); // se  guarda el audio para el boton en la variable player
}
void draw(){ 
  delay(15);
  switch(Nivel){
    case 0 :
    image(Portada, 0 , 0, 1000, 700 );
    Menu.play();
    if(Menu.position() == Menu.length() )
    {
      Menu.rewind();
      Menu.play();
    }
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
    if(Nivel1.position() == Nivel1.length() )
    {
      Nivel1.rewind();
      Nivel1.play();
    }
    if(c < 2){ // Se muestan las instrucciónes y introducción del juego
      frameRate(10) ;
      image(Inicio[c], 0 , 0, 1000, 700 );
      if(keyPressed){this.c = c + 1 ; }
    }
    else{
     frameRate(60);
     nivel_1();
    }
    break;
    case 2 : // nivel 2
    nivel_2();
    break;
    case 8 : //Creditos
    creditos() ;
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
void creditos(){
  if(xc > 970){ this.xc = 0 ;}
  if(RR == 1){
        this.RR = 0;
  }else{this.RR = 1 ;}
  image(creditoss[1], 0 , 0, 1000, 700 );
  image(creditoss[0], CRE , 0, 2000, 600 );
  image(Personaje[RR], xc , 400, 200, 200 );
  this.xc = xc + 10 ;
  this.CRE = CRE - 5 ;
  if(CRE < -2000){ this.Nivel = 0 ; this.CRE = 1000 ; this.xc = 0 ;}
}
int cco = 0;
void susto(){
  if((cco  < 10)&&(cco > 0 )){
    image(Sustos[suss],0,0,1000,700);
    this.cco = cco + 1 ;}else{ sus = int(random(0 , 10000)); this.co = 0 ; suss = int(random(0 , 6)) ; if((sus > 10)&&(sus<25)){ this.cco = 1 ;  } }
}
