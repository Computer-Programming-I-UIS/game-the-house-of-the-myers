int pizza = 0 ; int sofa = 0 ; int libreria = 0 ; int puerta3 = 0 ; int rompe = 0;int fi1 = 0 ; int fi2 = 0 ; int fi3= 0;
void nivel_3(){
  image(Mapa[2], 0 , 0, 1000, 690 );
  fill(0);text(mouseX, 20,20);text(mouseY, 90,90);
  if(( x > 603 )&&( x < 853 )){ if( (y > 205)&&(y < 700) ){if(keyCode == LEFT){this.x = x + 10 ; }if(keyCode == DOWN){this.y = y - 10 ; }if(keyCode == RIGHT){this.x = x - 10 ; }}}  // Mesa
  if(( x > 80 )&&( x < 380 )){ if( (y > 190)&&(y < 350) ){if(keyCode == LEFT){this.x = x + 10 ; }if(keyCode == DOWN){this.y = y - 10 ; }if(keyCode == RIGHT){this.x = x - 10 ; }if(keyCode == UP){this.y = y + 10 ; }}}  // Sofa
  persona();
  if(( x < 920 )&&(x > 650 )){ if(( y < 480)&&(y > 400)){if(keyPressed){ //Pizza
      if(key == 'z'){
        if(pizza == 1){this.pizza = 0 ;}else{this.pizza = 1 ;}
      }}else{ image(intt, 200 , 615 , 600, 80); QW.display() ; }}} // Invocar texto QW  
  if(pizza == 1){
    
  }
  if(( x < 390 )&&(x > 160 )){ if(( y < 280)&&(y > 180)){if(keyPressed){ //Sofa
      if(key == 'z'){
        if(sofa == 1){this.sofa = 0 ;}else{this.sofa = 1 ;}
      }}else{ image(intt, 200 , 615 , 600, 80); QW.display() ; }}} // Invocar texto QW  
  if(sofa == 1){
    
  }
  if(( x < 920 )&&(x > 730 )){ if(( y < 120)&&(y > 50)){if(keyPressed){ //Libreria
      if(key == 'z'){
        if(libreria == 1){this.libreria = 0 ;}else{this.libreria = 1 ;}
      }}else{ image(intt, 200 , 615 , 600, 80); QW.display() ; }}} // Invocar texto QW  
  if(libreria == 1){
    
  }
  if(( x < 160 )&&(x > 13 )){ if(( y < 680)&&(y > 560)){if(keyPressed){ //Puerta
      if(key == 'z'){
        if(puerta3 == 1){this.puerta3 = 0 ;}else{this.puerta3 = 1 ;}
      }}else{ image(intt, 200 , 615 , 600, 80); QW.display() ; }}} // Invocar texto QW  
  if(puerta3 == 1){
    if(rompe == 1){
        text("La puerta se abre y entraría Hanna en ella ", 500, 630);
        this.Nivel = 4 ;
        this.x = 53 ;
        this.y = 456 ;
    }else{
      image(Puzzle[0], 0 , 0, 1000, 690 );
      if(fi1 == 1){image(Puzzle[1], 0 , 0, 1000, 690 ); if(fi2 == 1){image(Puzzle[2], 0 , 0, 1000, 690 );if(fi3 == 1){image(Puzzle[3], 0 , 0, 1000, 690 );this.puerta3 == 1;}}if(fi3 == 1){image(Puzzle[2], 0 , 0, 1000, 690 );}
      }else{if(fi1 == 2){image(Puzzle[6], 0 , 0, 1000, 690 );if(fi1 == 1){image(Puzzle[2], 0 , 0, 1000, 690 );if(fi1 == 1){image(Puzzle[1], 0 , 0, 1000, 690 );if(fi2 == 1){image(Puzzle[2], 0 , 0, 1000, 690 );}}if(fi3 == 1){image(Puzzle[5], 0 , 0, 1000, 690 );}}
  }
}
