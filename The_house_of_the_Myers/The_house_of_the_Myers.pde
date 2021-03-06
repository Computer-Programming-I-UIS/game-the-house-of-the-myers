import ddf.minim.*; //Se importa minim que sera la biblioteca que usaremos para poner música en el juego.
//   fill(0);text(mouseX ,20 ,20);text(mouseY, 20 , 70);

Minim minim; // se declaran nombre para llamar las funciones
AudioPlayer Menu;// Se crea la variable que se encarga de la música del menú
AudioPlayer Nivel1;// Se crea la variable que se encarga de la música del nivel 1
AudioPlayer Nivel2;// Se crea la variable que se encarga de la música del nivel 2
AudioPlayer Nivel3;// Se crea la variable que se encarga de la música del nivel 3
AudioPlayer Nivel4;// Se crea la variable que se encarga de la música del nivel 4
AudioSample Puertas;// Se crea la variable que se encarga de la música de la puerta
AudioSample Cofres;// Se crea la variable que se encarga de la música de los cofres


PImage Portada ;
PImage [] Inicio = new PImage[2] ; // Variable para el inicio del juego
PImage [] Mapa = new PImage[4] ; // contiene los mapas del juego
PImage [] Personaje = new PImage[8] ; // animación personaje
PImage [] Diario = new PImage[4] ; // contiene las imágenes del diario
PImage [] Libre = new PImage[2] ; // es la libreria
PImage [] Cofre = new PImage [5]; // contiene los diferentes cofres
PImage [] Sustos = new PImage [7]; // contiene las imágenes de myers sustos
PImage [] creditoss = new PImage[2] ;// contiene las imágenes de los créditoss
PImage [] Lavaplatoss = new PImage[10] ; // contiene imagenes y animación del lavaplatos
PImage [] Lavadora = new PImage [8];// contiene las imágenes de la lavadora
PImage [] ficha = new PImage [6];// contiene las imágenes de las fichas
PImage [] Puzzle = new PImage [7];// contiene las imágenes del puzzle
PImage [] cuadro = new PImage [3];// contiene las imágenes del puzzle
PImage [] Finales = new PImage [2];// contiene las imágenes del puzzle
PImage Candado ;// contiene las imágenes del candado
PImage intt ;// contiene las imágenes el marco de la caja de los textos que aparecen

int Nivel = 0 ; // nivel
int c = 0 ; // Contador escena inicio
int RR = 0 ;//animación personaje créditos
int xc = 0;//contador fin de créditos
int CRE = 1000;//ubicación original de créditos
int sus; //variables sustos
int suss;//variables sustos

presion QW ;//declara el objeto del cuadro de texto

void setup(){
  size(1000,700);
  Portada = loadImage("Portada.png");
  intt = loadImage("Interactua.png");
  Candado = loadImage("/Nivel1/Candado.png");
  QW = new presion() ;
  for(int i = 0; i < Inicio.length ;i++){ // este for se usa para cargar las imágenes que van en el inicio
    Inicio[i] = loadImage("/Nivel1/Inicio_" + i + ".png");}
  for(int i = 0; i < Mapa.length ;i++){ // este for se usa para cargar las imáganes de los mapas de los niveles
    Mapa[i] = loadImage("Nivel_" + i + ".png");}
  for(int i = 0; i < Personaje.length ;i++){ // este for se usa para cargar las imáganes de los mapas de los niveles
    Personaje[i] = loadImage("/Judith/Judith_" + i + ".png");}
  for(int i = 0; i < Diario.length ;i++){ // este for se usa para cargar las imáganes de los mapas de los niveles
    Diario[i] = loadImage("/Judith/Libro_" + i + ".png");}
  for(int i = 0; i < Libre.length ;i++){ // este for se usa para cargar las imáganes de los mapas de los niveles
    Libre[i] = loadImage("/Nivel1/Libreria_" + i + ".png");}
  for(int i = 0; i < Cofre.length ;i++){ // este for se usa para cargar las imáganes de los mapas de los niveles
    Cofre[i] = loadImage("/Nivel1/Cofre_" + i + ".png");}
  for(int i = 0; i < creditoss.length ;i++){ // este for se usa para cargar las imáganes de los mapas de los niveles
    creditoss[i] = loadImage("/Creditos/Creditos_" + i + ".png");}
  for(int i = 0; i < Sustos.length ;i++){ // este for se usa para cargar las imáganes de los mapas de los niveles
    Sustos[i] = loadImage("Sangre_" + i + ".png");}
  for(int i = 0; i < Lavaplatoss.length ;i++){ // este for se usa para cargar las imáganes de los mapas de los niveles
    Lavaplatoss[i] = loadImage("/Nivel2/Lava_" + i + ".png");}
  for(int i = 0; i < Lavadora.length ;i++){ // este for se usa para cargar las imáganes de los mapas de los niveles
    Lavadora[i] = loadImage("/Nivel2/LAV_" + i + ".png");}
  for(int i = 0; i < Puzzle.length ;i++){ // este for se usa para cargar las imáganes de los mapas de los niveles
    Puzzle[i] = loadImage("/Nivel3/Puera_" + i + ".png");}
  for(int i = 0; i < ficha.length ;i++){ // este for se usa para cargar las imáganes de los mapas de los niveles
    ficha[i] = loadImage("/Nivel3/Ficha_" + i + ".png");}
  for(int i = 0; i < cuadro.length ;i++){ // este for se usa para cargar las imáganes de los mapas de los niveles
    cuadro[i] = loadImage("/Nivel4/Cuadro_" + i + ".png");}
  for(int i = 0; i < Finales.length ;i++){ // este for se usa para cargar las imáganes de los mapas de los niveles
    Finales[i] = loadImage("/Nivel4/Final_" + i + ".png");}
  minim = new Minim(this);
  Menu = minim.loadFile("/Sonido&Musica/HomicidaParadojico.wav" ); // se  guarda el audio para el botn en la variable player
  Nivel1 = minim.loadFile("/Sonido&Musica/Abuse_In_The_Orphanage.wav" ); // se  guarda el audio para el botón en la variable player
  Cofres = minim.loadSample("/Sonido&Musica/Sonido_Cofre.mp3" ); // se  guarda el audio para el botón en la variable player
  Puertas = minim.loadSample("/Sonido&Musica/Sonido_Puerta.mp3" ); // se  guarda el audio para el botón en la variable player
  Nivel2 = minim.loadFile("/Sonido&Musica/Dreaming.mp3" ); // se  guarda el audio para el botón en la variable player
  Nivel3 = minim.loadFile("/Sonido&Musica/Typical_Lullaby.mp3" ); // se  guarda el audio para el botón en la variable player
  Nivel4 = minim.loadFile("/Sonido&Musica/Center_Of_The_Earth.mp3" ); // se  guarda el audio para el botón en la variable player


}
void draw(){ 
  delay(15);
  textAlign(CENTER, TOP);
  textSize(32);
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
      this.Nivel = 8 ; // Entrar créditos
    }}}}}
    break;
    case 1 : // Nivel 1
    Menu.pause();
    Nivel1.play();
    if(Nivel1.position() == Nivel1.length() )
    {
      Nivel1.rewind();//repetir el sonido
      Nivel1.play();//reproducir el sonido
    }
    if(c < 2){ // Se muestan las instrucciónes y introducción del juego
      frameRate(10) ;
      image(Inicio[c], 0 , 0, 1000, 700 );
      if(keyPressed){this.c = c + 1 ; }
    }
    else{
     frameRate(60);
     delay(20);
     nivel_1();
    }
    break;
    case 2 : // nivel 2
    nivel_2();
    Nivel1.pause();
    Nivel2.play();
    if(Nivel2.position() == Nivel2.length() )
    {
      Nivel2.rewind();//repetir el sonido
      Nivel2.play();//reproducir el sonido
    }
    break;
    case 3 : // nivel 2
    nivel_3();
    Nivel2.pause();
    Nivel3.play();
    if(Nivel3.position() == Nivel3.length() )
    {
      Nivel3.rewind();//repetir el sonido
      Nivel3.play();//reproducir el sonido
    }
    break;
    case 4 : // nivel 2
    nivel_4();
        Nivel3.pause();
    Nivel4.play();
    if(Nivel4.position() == Nivel4.length() )
    {
      Nivel4.rewind();//repetir el sonido
      Nivel4.play();//reproducir el sonido
    }
    break;
    case 5 : // Final 1
    Nivel1.play();
    if(Nivel1.position() == Nivel1.length() )
    {
      Nivel1.rewind();//repetir el sonido
      Nivel1.play();//reproducir el sonido
    }
    image(Finales[0], 0 , 0, 1000, 700 );
    if(keyPressed){this.Nivel = 8 ; }
    image(intt, 200 , 615 , 600, 80); 
    text("presiona cualquier tecla para continuar", 500, 630);
    break;
  
    case 6 : // Final 1
    Nivel1.play();
    if(Nivel1.position() == Nivel1.length() )
    {
      Nivel1.rewind();//repetir el sonido
      Nivel1.play();//reproducir el sonido
    }
    image(Finales[1], 0 , 0, 1000, 700 );
    if(keyPressed){this.Nivel = 8 ; }
    image(intt, 200 , 615 , 600, 80); 
    text("presiona cualquier tecla para continuar", 500, 630);
    break;
    
    case 8 : //Créditos
    delay(0);
    creditos() ;
    break;
}}
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
