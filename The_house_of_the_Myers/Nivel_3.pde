
void nivel_3(){
  image(Mapa[2], 0 , 0, 1000, 690 );
  fill(0);text(mouseX, 20,20);text(mouseY, 90,90);
  if(( x > 603 )&&( x < 853 )){ if( (y > 205)&&(y < 700) ){if(keyCode == LEFT){this.x = x + 10 ; }if(keyCode == DOWN){this.y = y - 10 ; }if(keyCode == RIGHT){this.x = x - 10 ; }}}  // Mesa
  if(( x > 80 )&&( x < 380 )){ if( (y > 190)&&(y < 350) ){if(keyCode == LEFT){this.x = x + 10 ; }if(keyCode == DOWN){this.y = y - 10 ; }if(keyCode == RIGHT){this.x = x - 10 ; }if(keyCode == UP){this.y = y + 10 ; }}}  // Sofa
  
  persona();
}
