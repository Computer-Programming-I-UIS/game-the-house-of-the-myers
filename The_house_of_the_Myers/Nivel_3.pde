int pizza = 0 ; int sofa = 0 ; int libreria = 0 ; int puerta3 = 0 ; int rompe = 0;int fi1 = 0 ; int fi2 = 0 ; int fi3= 0;
void nivel_3(){
  image(Mapa[2], 0 , 0, 1000, 690 );
  if(( x > 603 )&&( x < 853 )){ if( (y > 205)&&(y < 700) ){if(keyCode == LEFT){this.x = x + 10 ; }if(keyCode == DOWN){this.y = y - 10 ; }if(keyCode == RIGHT){this.x = x - 10 ; }}}  // Mesa
  if(( x > 80 )&&( x < 380 )){ if( (y > 190)&&(y < 350) ){if(keyCode == LEFT){this.x = x + 10 ; }if(keyCode == DOWN){this.y = y - 10 ; }if(keyCode == RIGHT){this.x = x - 10 ; }if(keyCode == UP){this.y = y + 10 ; }}}  // Sofá
  persona();
  if(( x < 920 )&&(x > 600 )){ if(( y < 480)&&(y > 400)){if(keyPressed){ //Pizza
      if(key == 'z'){
        if(pizza == 1){this.pizza = 0 ;}else{this.pizza = 1 ;}
      }}else{ image(intt, 200 , 615 , 600, 80); QW.display() ; }}} // Invocar texto QW  
  if(pizza == 1){
    if(fi1 == 0){image(ficha[4], 0 , 0, 1000, 690 );
    if((mouseY < 520 )&&(mouseY > 390 )){ if(( mouseX  < 840)&&( mouseX > 660)){
      image(intt, 200 , 615 , 600, 80); 
      text("Click para recoger", 500, 630);
      if(mousePressed){
        this.fi1 = 1 ;}}}
    }else{image(ficha[5], 0 , 0, 1000, 690 );}
  }
  if(( x < 390 )&&(x > 160 )){ if(( y < 280)&&(y > 180)){if(keyPressed){ //Sofá
      if(key == 'z'){
        if(sofa == 1){this.sofa = 0 ;}else{this.sofa = 1 ;}
      }}else{ image(intt, 200 , 615 , 600, 80); QW.display() ; }}} // Invocar texto QW  
  if(sofa == 1){
    if(fi2 == 0){image(ficha[0], 0 , 0, 1000, 690 );
    if((mouseY < 340 )&&(mouseY > 270 )){ if(( mouseX  < 810)&&( mouseX > 750)){
      image(intt, 200 , 615 , 600, 80); 
      text("Click para recoger", 500, 630);
      if(mousePressed){
        this.fi2 = 1 ;}}}
    }else{image(ficha[1], 0 , 0, 1000, 690 );}
  }
  if(( x < 920 )&&(x > 730 )){ if(( y < 120)&&(y > 50)){if(keyPressed){ //Librería
      if(key == 'z'){
        if(libreria == 1){this.libreria = 0 ;}else{this.libreria = 1 ;}
      }}else{ image(intt, 200 , 615 , 600, 80); QW.display() ; }}} // Invocar texto QW  
  if(libreria == 1){
    if(fi3 == 0){image(ficha[2], 0 , 0, 1000, 690 );
    if((mouseY < 550 )&&(mouseY > 440 )){ if(( mouseX  < 810)&&( mouseX > 711)){
      image(intt, 200 , 615 , 600, 80); 
      text("Click para recoger", 500, 630);
      if(mousePressed){
        this.fi3 = 1 ;}}}
    }else{image(ficha[3], 0 , 0, 1000, 690 );}
  }
  if(( x < 160 )&&(x > 13 )){ if(( y < 680)&&(y > 560)){if(keyPressed){ //Puerta
      if(key == 'z'){
        if(puerta3 == 1){this.puerta3 = 0 ;}else{this.puerta3 = 1 ;}
      }}else{ image(intt, 200 , 615 , 600, 80); QW.display() ; }}} // Invocar texto QW  
  if(puerta3 == 1){
    if(rompe == 1){
        image(Puzzle[3], 0 , 0, 1000, 690 );
        text("La puerta se abre y entra Hanna en ella ", 500, 630);
        this.Nivel = 4 ;
        this.x = 340 ;
        this.y = 210 ;
        Puertas.trigger();
    }else{
      image(Puzzle[0], 0 , 0, 1000, 690 );
      if(fi1 == 1){image(Puzzle[1], 0 , 0, 1000, 690 ); if(fi2 == 1){image(Puzzle[2], 0 , 0, 1000, 690 );if(fi3 == 1){image(Puzzle[3], 0 , 0, 1000, 690 ); this.rompe = 1;}}if(fi3 == 1){image(Puzzle[2], 0 , 0, 1000, 690 );}
      }else{if(fi2 == 1){image(Puzzle[6], 0 , 0, 1000, 690 );if(fi3 == 1){image(Puzzle[2], 0 , 0, 1000, 690 );if(fi1 == 1){image(Puzzle[1], 0 , 0, 1000, 690 );}}if(fi1 == 1){image(Puzzle[2], 0 , 0, 1000, 690 );}}}}}
   susto();
}
