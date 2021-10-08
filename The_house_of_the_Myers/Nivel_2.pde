


void nivel_2(){
  image(Mapa[1], 0 , 0, 1000, 690 );
  
  persona();
  if( y > 530 ){ if( x < 189){this.x = x + 10 ; }}// limite bajada
  if(( y > 529)&&(y<531)){ if(( x < 610) && ( x > 200)){this.y = y + 10 ; }} // limite pared abajo
  if(( y > 409)&&( y < 531) ){ if(( x > 0) && ( x < 609)){this.y = y - 10 ; }} // limite pared arriba
  if(( y > 409 )&&( y < 531 )){ if( x < 609 ){this.x = x + 10 ; }} // limite pared lado
  if( x > 739 ){ if( y > 411){this.x = x - 10 ; }}// lavadora frente
  if( x > 739 ){ if(y > 409){this.y = y - 10 ; }}// lavadora arriba + murp
  if(y < 90){ this.y = y + 10 ; } // cocina
  if(x < 119){ this.x = x + 10 ; }
  text(x , 20 , 20  ) ;
  text(y , 40 , 20  ) ;
  //susto();
}
