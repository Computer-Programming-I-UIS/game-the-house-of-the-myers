int llave = 0 ; // Variable llave = 0 no tiene la llave
int cofre = 0 ; // cofre abierto o cerrado
int li = 0 ; // libreroa abierta o cerrada
void nivel_1(){
  textAlign(CENTER, TOP);
  textSize(32);
  image(Mapa[0], 0 , 0, 1000, 690 );
  persona();
  if(mouseY < 0 ){ if(mouseY > 0 ){ if( mouseX < 100){ if( mouseX > 100){if( mouseButton == LEFT  ){}}}}}
  rect(7,7,200,100);  
  if(( y < 107 )&&(y > 7 )){ if(( x > 7) && ( x < 207)){
    if(keyPressed){
      if(key == 'z'){ if(llave == 1){
        text("La puerta se abre y entraría hanna en ella ", 500, 630);
        this.Nivel = 2 ; 
      }else{
        text("No tienes la llave de esta puerta", 500, 630);}
      }}else{ QW.display() ; }}} // Invocar texto QW   
  rect(207,7,10,500);
  if(( y < 507 )&&(y > 7 )){ if(( x > 197) && ( x < 209)){this.x = x + 10 ; }} // choque escaleras
  if(( y < 507 )&&(y > 7 )){ if(( x <147)&&( x > 137)){this.x = x - 10 ; }} // choque escaleras
  image(Personaje[R], x , y, 100, 100 );
  rect(960,7,30,200);
  if(( y < 207 )&&(y > 7 )){ if( x > 880){this.x = x - 10 ; }} // choque Libreria
  if(( y < 207 )&&(y > 7 )){ if( x > 820){if(keyPressed){
      if(key == 'z'){
        if(li == 1 ){
          this.li = 0 ;
        }else{this.li = 1 ;}
      }}else{ QW.display() ; }}} // Invocar texto QW  
  if(li == 1){
    libreria() ;
  }
  
  rect(920,407,70,150);
  if(( y < 557 )&&(y > 407 )){ if( x > 840){this.x = x - 10 ; }} // choque cofre
  if(( y < 557 )&&(y > 407 )){ if( x > 800){if(keyPressed){
    if(key == 'z'){
      if(li == 1 ){
          this.li = 0 ;
      }else{this.li = 1 ;}
    }}else{ QW.display() ; }}} // Invocar texto QW  
}
void libreria() {
  rect(0,0,30,20);
}
