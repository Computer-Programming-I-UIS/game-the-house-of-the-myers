int lar = 0 ;int la = 0 ; int lav = 0 ; int ne = 0 ; int gab = 0 ; int llag = 0 ; int llaved = 0 ; int llave2 = 0 ; int cor = 0 ;

void nivel_2(){
  image(Mapa[1], 0 , 0, 1000, 690 );
  image(Lavadora[6],820,510,190,190);
  if( y > 530 ){ if( x < 189){this.x = x + 10 ; }}// limite bajada
  if(( y > 529)&&(y<531)){ if(( x < 610) && ( x > 200)){this.y = y + 10 ; }} // límite pared abajo
  if(( y > 409)&&( y < 531) ){ if(( x > 0) && ( x < 609)){this.y = y - 10 ; }} // l{imite pared arriba
  if(( y > 409 )&&( y < 531 )){ if( x < 609 ){this.x = x + 10 ; }} // límite pared lado
  if( x > 739 ){ if( y > 411){this.x = x - 10 ; }}// lavadora frente
  if( x > 739 ){ if(y > 409){this.y = y - 10 ; }}// lavadora arriba + murp
  if(y < 90){ this.y = y + 10 ; } // cocina
  if(x < 119){ this.x = x + 10 ; } // cocina lado
  if(( x < 240 )&&(x > 120 )){ if( y < 140){if(keyPressed){ //lavaplatos
      if(key == 'z'){
        if(lav == 1){this.lav = 0 ;}else{this.lav = 1 ;}
      }}else{ image(intt, 200 , 615 , 600, 80); QW.display() ; }}} // Invocar texto QW  
  if(lav == 1){
    lavaplatos();
  }else{ persona();}
  if( y > 411 ){ if( x > 720){if(keyPressed){
      if(key == 'z'){
        if(la == 1){this.la = 0 ;}else{this.la = 1 ;}
      }}else{ image(intt, 200 , 615 , 600, 80); QW.display() ; }}}
  if(la == 1){ // lavadora
    lavanderia();
  }
  if(( x < 420 )&&(x > 240 )){ if( y < 140){ image(intt, 100 , 615 , 800, 80); text("Los cajones estan cerrados ",500, 630);}}
  if(( x < 550 )&&(x > 430 )){ if( y < 140){if(keyPressed){ //nevera
      if(key == 'z'){
        if(ne == 1){this.ne = 0 ;}else{this.ne = 1 ;}
      }}else{ image(intt, 200 , 615 , 600, 80); QW.display() ; }}} // Invocar texto QW  
  if(ne == 1){
    image(Lavadora[2],0,0,1000,700);
    if((mouseY < 669 )&&(mouseY > 598 )){ if(( mouseX  < 405)&&( mouseX > 249)){
      image(intt, 200 , 615 , 600, 80); 
      text("Click para recoger", 500, 630);
      if(mousePressed){
        this.cor = 1 ;this.ne = 2 ;}}}}
  if(ne == 2 ){image(Lavadora[3],0,0,1000,700);}
  if(( x < 790 )&&(x > 630 )){ if( y < 140){if(keyPressed){ // cajon vinos
      if(key == 'z'){if(llag == 1){
        if(gab == 1){this.gab = 0 ;}else{this.gab = 1 ;}}else{image(intt, 100 , 615 , 800, 80); text("La gavetas estan cerradas, necesitas una llave",500, 630);}
      }}else{ image(intt, 200 , 615 , 600, 80); QW.display() ; }}} // Invocar texto QW  
  if(gab == 1){
    if(llave2 == 0){
      image(Lavadora[4],0,0,1000,700);
      if((mouseY < 401 )&&(mouseY > 306 )){ if(( mouseX  < 706)&&( mouseX > 250)){
      image(intt, 200 , 615 , 600, 80); 
      text("Click para recoger", 500, 630);
      if(mousePressed){
        if(cor == 1){
        this.llave2 = 1 ;
      }else{image(intt, 200 , 615 , 600, 80);text("Necesitas algo para poder abrir esta botella", 500, 630);}}}}
    }else{image(Lavadora[5],0,0,1000,700);}
  }
  if(( y < 370 )&&(y > 260 )){ if( x > 870){ // puerta
    if(keyPressed){
      if(key == 'z'){ if(llave2 == 1){
        image(intt, 200 , 615 , 600, 80); 
        text("La puerta se abre y entra Hanna en ella ", 500, 630);
        this.Nivel = 3 ;
        this.x = 53 ;
        this.y = 456 ;
        Puertas.trigger();
      }else{
        image(intt, 200 , 615 , 600, 80);
        text("No tienes la llave de esta puerta", 500, 630);}
      }}else{ image(intt, 200 , 615 , 600, 80); QW.display() ; }}}
  susto();
}

void lavanderia(){
  if(llag == 1){
    image(Lavadora[1],0,0,1000,700);
  }else{
    image(Lavadora[0],0,0,1000,700);
    if((mouseY < 552 )&&(mouseY > 439 )){ if(( mouseX  < 543)&&( mouseX > 416)){
      image(intt, 200 , 615 , 600, 80); 
      text("Click para recoger la llave", 500, 630);
      if(mousePressed){
        this.llag = 1 ;
}}}}}

int llap = 1 ; int lac = 1 ; int lacc = 0 ;
void lavaplatos(){
  if(llag == 1){
    fill(0);
    if(keyPressed&&(key==CODED)){if(keyCode==RIGHT){
      this.lac = lac + 1;
      this.llap = llap + 1 ;
      if(llap == 4){this.llap = 1 ;}}}
    if(lac == 7){
    for(int i = 4; i < 10 ; i++){
        image(Lavaplatoss[i],0,0,1000,700);}
    this.llap = 8 ;
    this.llaved = 1 ;
    }else{
      image(Lavaplatoss[llap],0,0,1000,700);
      if(llaved == 1){
      image(intt, 200 , 615 , 600, 80); 
      text("Recoge la llave", 500, 630);}
    }
    image(intt, 200 , 615 , 600, 80); 
    text("Gira la llave para soltar la tubería(RIGHT)", 500, 630);
  }else{image(Lavaplatoss[0],0,0,1000,700);image(intt, 200 , 615 , 600, 80); QW.display() ;
  if((mouseY < 390 )&&(mouseY > 320 )){ if(( mouseX  < 460)&&( mouseX > 367)){
      image(intt, 200 , 615 , 600, 80); 
      text("Necesitas una llave para soltar la tubería", 500, 630);}}}
}
