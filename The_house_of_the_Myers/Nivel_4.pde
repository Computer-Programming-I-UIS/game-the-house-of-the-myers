int puer1 = 0 ; int puer2 = 0 ; int cua = 0 ;
void nivel_4(){
  image(Mapa[3], 0 , 0, 1000, 690 );
  //fill(0);text(x ,20 ,20);text(y, 20 , 70);
  if( x < 311 ){if(keyCode == LEFT){this.x = x + 10 ; }}  // Muros
  if( x > 630 ){if(keyCode == RIGHT){this.x = x - 10 ; }} // Muro
  persona();
  if( y > 560 ){ if(( x > 380 ) && ( x < 580 )){if(keyPressed){ // puerta 1
      if(key == 'z'){
        if(puer1 == 1){this.puer1 = 0 ;}else{this.puer1 = 1 ;}
  }}else{ image(intt, 200 , 615 , 600, 80); QW.display() ; }}}
  if( x > 600 ){ if(( y > 180 ) && ( y < 250 )){if(keyPressed){ //puerta 2
      if(key == 'z'){
  if(puer2 == 1){this.puer2 = 0 ;}else{this.puer2 = 1 ;}}}else{ image(intt, 200 , 615 , 600, 80); QW.display() ; }}}
  
  if( y < 90 ){ if(( x < 630 ) && ( x > 380 )){if(keyPressed){ // cuadro
      if(key == 'z'){
        if(cua == 1){this.cua = 0 ;}else{this.cua = 1 ;}
  }}else{ image(intt, 200 , 615 , 600, 80); QW.display() ; }}}
}
