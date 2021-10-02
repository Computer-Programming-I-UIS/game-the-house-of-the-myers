int llave = 0 ; // Variable llave = 0 no tiene la llave
int cofre = 0 ; // cofre abierto o cerrado
int li = 0 ; // libreroa abierta o cerrada
int uz = 0 ; // interactuando 1 = true
void nivel_1(){


  textAlign(CENTER, TOP);
  textSize(32);
  image(Mapa[0], 0 , 0, 1000, 690 );
  image(Escaleras,-30,45,290,500);
  image(Cofre[0],800,407,200,210);
  if(uz == 0){persona(); }// para dectetar si se encuentra haciendo alguna interacción
  if(( y < 204 )&&(y > 104 )){ if(( x > 11) && ( x < 211)){
    if(keyPressed){
      if(key == 'z'){ if(llave == 1){
        text("La puerta se abre y entraría Hanna en ella ", 500, 630);
        this.Nivel = 2 ;
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
      }else{this.cofre = 1 ;}
    }}else{ QW.display() ; }}} // Invocar texto QW  
    if(cofre == 1){
     
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
