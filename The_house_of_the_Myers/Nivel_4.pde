int puer1 = 0 ; int puer2 = 0 ; int cua = 0 ; int ccua = 1 ;
int nn1 = 0; int nn2 = 0; int nn3 = 0; int nn4 = 0;int nnn1 = 0; int nnn2 = 0; int nnn3 = 0; int nnn4 = 0;
int arr = 0 ;

void nivel_4(){
  image(Mapa[3], 0 , 0, 1000, 690 );
  if( x < 311 ){if(keyCode == LEFT){this.x = x + 10 ; }}  // límites Muros
  if( x > 630 ){if(keyCode == RIGHT){this.x = x - 10 ; }} // límites Muros
  persona();
  if( y > 560 ){ if(( x > 380 ) && ( x < 580 )){if(keyPressed){ // puerta 1
      if(key == 'z'){
        if(puer1 == 1){this.puer1 = 0 ;}else{this.puer1 = 1 ;}
  }}else{ image(intt, 200 , 615 , 600, 80); QW.display() ; }}}
  if(puer1 == 1){
    textSize(150);
    image(cuadro[2], 100 , 0, 800, 599 );
    if(( mouseY < 350 )&&(mouseY > 290)){ if(( mouseX < 300)&&( mouseX > 250)){if(mousePressed){if( mouseButton == LEFT  ){
      if(nnn1 < 9){
        this.nnn1 = nnn1 + 1;
      }else{this.nnn1 = 0 ;}}}}}
    if(( mouseY < 580 )&&(mouseY > 500)){ if(( mouseX < 300)&&( mouseX > 250)){if(mousePressed){if( mouseButton == LEFT  ){
      if(nnn1 > 0){
        this.nnn1 = nnn1 - 1;
      }else{this.nnn1 = 9 ;}}}}}
    if(( mouseY < 350 )&&(mouseY > 290)){ if(( mouseX < 460)&&( mouseX > 320)){if(mousePressed){if( mouseButton == LEFT  ){
      if(nnn2 < 9){
        this.nnn2 = nnn2 + 1;
      }else{this.nnn2 = 0 ;}}}}}
    if(( mouseY < 580 )&&(mouseY > 500)){ if(( mouseX < 460)&&( mouseX > 320)){if(mousePressed){if( mouseButton == LEFT  ){
      if(nnn2 > 0){
        this.nnn2 = nnn2 - 1;
      }else{this.nnn2 = 9 ;}}}}}
    if(( mouseY < 350 )&&(mouseY > 290)){ if(( mouseX < 620)&&( mouseX > 560)){if(mousePressed){if( mouseButton == LEFT  ){
      if(nnn3 < 9){
        this.nnn3 = nnn3 + 1;
      }else{this.nnn3 = 0 ;}}}}}
    if(( mouseY < 580 )&&(mouseY > 500)){ if(( mouseX < 620)&&( mouseX > 560)){if(mousePressed){if( mouseButton == LEFT  ){
      if(nnn3 > 0){
        this.nnn3 = nnn3 - 1;
      }else{this.nnn3 = 9 ;}}}}}
    if(( mouseY < 350 )&&(mouseY > 290)){ if(( mouseX < 730)&&( mouseX > 620)){if(mousePressed){if( mouseButton == LEFT  ){
      if(nnn4 < 9){
        this.nnn4 = nnn4 + 1;
      }else{this.nnn4 = 0 ;}}}}}
    if(( mouseY < 580 )&&(mouseY > 500)){ if(( mouseX < 730)&&( mouseX > 620)){if(mousePressed){if( mouseButton == LEFT  ){
      if(nnn4 > 0){
        this.nnn4 = nnn4 - 1;
      }else{this.nnn4 = 9 ;}}}}}
    fill(255);
    
    text( nnn1 , 250 , 330 );
    text( nnn2 , 420 , 330 );
    text( nnn3 , 560 , 330 );
    text( nnn4 , 720 , 330 );
  if(((nnn1 == 1 )&&( nnn2 == 9))&&((nnn3 == 7)&&(nnn4 == 8))){this.Nivel = 5 ;}
  }
  if( x > 600 ){ if(( y > 180 ) && ( y < 250 )){if(keyPressed){ // puerta 2
      if(key == 'z'){
  if(puer2 == 1){this.puer2 = 0 ;}else{this.puer2 = 1 ;}}}else{ image(intt, 200 , 615 , 600, 80); QW.display() ; }}}
  if(puer2 == 1){
    textSize(150);
    image(cuadro[2], 100 , 0, 800, 599 );
    if(( mouseY < 350 )&&(mouseY > 290)){ if(( mouseX < 300)&&( mouseX > 250)){if(mousePressed){if( mouseButton == LEFT  ){
      if(nn1 < 9){
        this.nn1 = nn1 + 1;
      }else{this.nn1 = 0 ;}}}}}
    if(( mouseY < 580 )&&(mouseY > 500)){ if(( mouseX < 300)&&( mouseX > 250)){if(mousePressed){if( mouseButton == LEFT  ){
      if(nn1 > 0){
        this.nn1 = nn1 - 1;
      }else{this.n1 = 9 ;}}}}}
    if(( mouseY < 350 )&&(mouseY > 290)){ if(( mouseX < 460)&&( mouseX > 320)){if(mousePressed){if( mouseButton == LEFT  ){
      if(nn2 < 9){
        this.nn2 = nn2 + 1;
      }else{this.nn2 = 0 ;}}}}}
    if(( mouseY < 580 )&&(mouseY > 500)){ if(( mouseX < 460)&&( mouseX > 320)){if(mousePressed){if( mouseButton == LEFT  ){
      if(nn2 > 0){
        this.nn2 = nn2 - 1;
      }else{this.nn2 = 9 ;}}}}}
    if(( mouseY < 350 )&&(mouseY > 290)){ if(( mouseX < 620)&&( mouseX > 560)){if(mousePressed){if( mouseButton == LEFT  ){
      if(nn3 < 9){
        this.nn3 = nn3 + 1;
      }else{this.nn3 = 0 ;}}}}}
    if(( mouseY < 580 )&&(mouseY > 500)){ if(( mouseX < 620)&&( mouseX > 560)){if(mousePressed){if( mouseButton == LEFT  ){
      if(nn3 > 0){
        this.nn3 = nn3 - 1;
      }else{this.nn3 = 9 ;}}}}}
    if(( mouseY < 350 )&&(mouseY > 290)){ if(( mouseX < 730)&&( mouseX > 620)){if(mousePressed){if( mouseButton == LEFT  ){
      if(nn4 < 9){
        this.nn4 = nn4 + 1;
      }else{this.nn4 = 0 ;}}}}}
    if(( mouseY < 580 )&&(mouseY > 500)){ if(( mouseX < 730)&&( mouseX > 620)){if(mousePressed){if( mouseButton == LEFT  ){
      if(nn4 > 0){
        this.nn4 = nn4 - 1;
      }else{this.nn4 = 9 ;}}}}}
    fill(255);
    text( nn1 , 250 , 330 );
    text( nn2 , 420 , 330 );
    text( nn3 , 560 , 330 );
    text( nn4 , 720 , 330 );
  if(((nn1 == 1 )&&( nn2 == 9))&&((nn3 == 7)&&(nn4 == 8))){this.Nivel = 6 ;}
  }
  if( y < 90 ){ if(( x < 630 ) && ( x > 380 )){if(keyPressed){ // cuadro
      if(key == 'z'){
        if(cua == 1){this.cua = 0 ;}else{this.cua = 1 ;}
  }}else{ image(intt, 200 , 615 , 600, 80); QW.display() ; }}}
  if(cua == 1){
  if(ccua == 1){
    image(cuadro[ccua], 0 , 0, 1000, 699 );
    if(mouseY < 650 ){ if(mouseY > 520 ){ if( mouseX  < 210){ if( mouseX > 52){
      image(intt, 200 , 615 , 600, 80); 
      text("Click para coger la hoja doblada", 500, 630);
      if( mouseButton == LEFT  ){
        this.ccua = 0 ;
        this.D = D + 1 ;
        image(intt, 200 , 615 , 600, 80); 
        text("Encontraste una página que parece ser del diarío", 500, 630);
  }}}}}}else{ image(cuadro[ccua], 0 , 0, 1000, 699 );}}
  //fill(0);text(mouseX ,20 ,20);text(mouseY, 20 , 70);
}
