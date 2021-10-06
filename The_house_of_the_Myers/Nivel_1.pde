int llave = 0 ; // Variable llave = 0 no tiene la llave
int cofre = 0 ; // cofre abierto o cerrado
int li = 0 ; // libreroa abierta o cerrada
int uz = 0 ; // interactuando 1 = true
int co = 0 ; // cofre ya abierto o cerrado
void nivel_1(){
  textAlign(CENTER, TOP);
  fill(0);
  textSize(32);
  image(Mapa[0], 0 , 0, 1000, 690 );
  image(Cofre[co],800,407,200,210);
  if(uz == 0){persona(); }// para dectetar si se encuentra haciendo alguna interacción
  if(( y < 154 )&&(y > 0 )){ if(( x > 11) && ( x < 211)){
    if(keyPressed){
      if(key == 'z'){ if(llave == 1){
        text("La puerta se abre y entraría Hanna en ella ", 500, 630);
        this.Nivel = 2 ;
        Puertas.trigger();
      }else{
        text("No tienes la llave de esta puerta", 500, 630);}
      }}else{ QW.display() ; }}} // Invocar texto QW   
  if(( y < 511 )&&(y > 10 )){ if(( x > 197) && ( x < 213)){this.x = x + 10 ; }} // choque escaleras
  if(( y < 511 )&&(y > 10)){ if(( x <147)&&( x > 137)){this.x = x - 10; }} // choque escaleras
 // rect(870,407,70,150);
  if(( y < 304 )&&(y > 104 )){ if( x > 830){this.x = x - 10 ; }} // choque Libreria
  if(( y < 304 )&&(y > 104 )){ if( x > 740){if(keyPressed){
      if(key == 'z'){
        if(uz == 1){this.uz = 0 ;}else{this.uz = 1 ;}
        if(li == 1 ){
          this.li = 0 ;
        }else{this.li = 1 ;}
      }}else{ QW.display() ; }}} // Invocar texto QW  
  if(li == 1){
    libreria() ;
  }
  
  if(( y < 557 )&&(y > 325)){ if( x > 800){this.x = x - 10 ; }} // choque cofre
  if(( y < 557 )&&(y > 300)){ if( x > 720){if(keyPressed){
    if(key == 'z'){
      if(uz == 1){this.uz = 0 ;}else{this.uz = 1 ;}
      if(cofre == 1 ){
        this.cofre = 0 ;
      }else{this.cofre = 1 ;  Cofres.trigger();}
    }}if(cofre == 1){}else{ QW.display() ; }}} // Invocar texto QW  
    if(cofre == 1){
     cofrre();
  }
}

int lie = 0 ; // se usa para saber si ya tomo la pagina
int ccc = 0 ; // se usa para marcar que ya tiene la pagina
void libreria() {
  if(lie == 0){
    image(Libre[lie], 0 , 0, 1000, 699 );
    if(mouseY < 350 ){ if(mouseY > 200 ){ if( mouseX  < 620){ if( mouseX > 550){
      text("Clip para coger la hoja doblada", 500, 630);
      if( mouseButton == LEFT  ){
        this.lie = 1 ;
        this.D = D + 1 ;
        this.ccc = 1 ;
        text("Encontraste una página que parece ser del diarío", 500, 630);
  }}}}}}else{ image(Libre[lie], 0 , 0, 1000, 699 );}
  if(mouseY < 700 ){ if(mouseY > 500 ){ if( mouseX  < 620){if( mouseX > 120){
      text("Los libros estarian en tan mal estado que seria incapaz de leerlos", 500, 550);}}}}
  if(ccc > 0){
    text("Encontraste una página que parece ser del diarío", 500, 630);
    text("Presiona 'z' para dejar de interactuar", 500, 580);
  }else{text("Presiona 'z' para dejar de interactuar", 500, 580);}
}
int n1 = 0; int n2 = 0; int n3 = 0; int n4 = 0;
int ar = 0 ;
int coo = 0 ;
int cooo = 0 ;
void cofrre(){
  if(coo == 0){
  image(Cofre[1],0,0, 1000, 700);
  if(( mouseY < 400 )&&(mouseY > 350)){ if(( mouseX < 530)&&( mouseX > 450)){
      text("Clip para intentar abrir el candado", 500, 630);
      if(mousePressed){if( mouseButton == LEFT  ){this.ar = 1 ; }}}}
  if(ar == 1){
    image(Candado, 100 , 0, 800, 599 );
    textSize(150);
    if(( mouseY < 350 )&&(mouseY > 290)){ if(( mouseX < 300)&&( mouseX > 250)){if(mousePressed){if( mouseButton == LEFT  ){
      if(n1 < 9){
        this.n1 = n1 + 1;
      }else{this.n1 = 0 ;}}}}}
    if(( mouseY < 580 )&&(mouseY > 500)){ if(( mouseX < 300)&&( mouseX > 250)){if(mousePressed){if( mouseButton == LEFT  ){
      if(n1 > 0){
        this.n1 = n1 - 1;
      }else{this.n1 = 9 ;}}}}}
    if(( mouseY < 350 )&&(mouseY > 290)){ if(( mouseX < 460)&&( mouseX > 320)){if(mousePressed){if( mouseButton == LEFT  ){
      if(n2 < 9){
        this.n2 = n2 + 1;
      }else{this.n1 = 0 ;}}}}}
    if(( mouseY < 580 )&&(mouseY > 500)){ if(( mouseX < 460)&&( mouseX > 320)){if(mousePressed){if( mouseButton == LEFT  ){
      if(n2 > 0){
        this.n2 = n2 - 1;
      }else{this.n2 = 9 ;}}}}}
    if(( mouseY < 350 )&&(mouseY > 290)){ if(( mouseX < 620)&&( mouseX > 560)){if(mousePressed){if( mouseButton == LEFT  ){
      if(n3 < 9){
        this.n3 = n3 + 1;
      }else{this.n1 = 0 ;}}}}}
    if(( mouseY < 580 )&&(mouseY > 500)){ if(( mouseX < 620)&&( mouseX > 560)){if(mousePressed){if( mouseButton == LEFT  ){
      if(n3 > 0){
        this.n3 = n3 - 1;
      }else{this.n3 = 9 ;}}}}}
    if(( mouseY < 350 )&&(mouseY > 290)){ if(( mouseX < 730)&&( mouseX > 620)){if(mousePressed){if( mouseButton == LEFT  ){
      if(n4 < 9){
        this.n4 = n4 + 1;
      }else{this.n1 = 0 ;}}}}}
    if(( mouseY < 580 )&&(mouseY > 500)){ if(( mouseX < 730)&&( mouseX > 620)){if(mousePressed){if( mouseButton == LEFT  ){
      if(n4 > 0){
        this.n4 = n4 - 1;
      }else{this.n4 = 9 ;}}}}}
    fill(255);
    text( n1 , 250 , 330 );
    text( n2 , 420 , 330 );
    text( n3 , 560 , 330 );
    text( n4 , 720 , 330 );
    fill(0);
    if(( mouseY < 310 )&&(mouseY > 260)){ if(( mouseX < 860)&&( mouseX > 820)){
      textSize(32);
      text("Clip para dejar de intentar abrir el candado", 500, 630);
      if(mousePressed){if( mouseButton == LEFT  ){
        this.ar = 0 ;
  }}}}}
  if(((n1 == 1 )&&( n2 == 9))&&((n3 == 7)&&(n4 == 8))){this.co = 2 ;this.coo = 2 ;}}
  if(coo == 2){
    if(cooo == 0 ){
      image(Cofre[3],0,0, 1000, 700);
      if(( mouseY < 600 )&&(mouseY > 150)){ if(( mouseX < 1000)&&( mouseX > 50)){
        text("Clip Derecho para coger la hoja doblada y la llave", 500, 630);
        if(mousePressed){if( mouseButton == RIGHT  ){
          this.D = D + 1 ;
          this.llave = 1 ;
          this.cooo = 1 ;
      }}}}
    }else{image(Cofre[4],0,0, 1000, 700);}
  }
}
