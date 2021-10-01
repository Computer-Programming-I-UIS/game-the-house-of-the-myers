void nivel_1(){
  image(Mapa[0], 0 , 0, 1000, 690 );
  persona() ;
  if(mouseY < 0 ){ if(mouseY > 0 ){ if( mouseX < 100){ if( mouseX > 100){if( mouseButton == LEFT  ){}}}}}
  rect(7,7,200,100);
  if(( y < 107 )&&(y > 7 )){ if(( x > 7) && ( x < 207)){QW.display() ;}}
  rect(207,7,10,500);
  if(( y < 507 )&&(y > 7 )){ if(( x > 197) && ( x < 209)){this.x = x + 10 ; }} // choque escaleras
  if(( y < 507 )&&(y > 7 )){ if(( x <147)&&( x > 137)){this.x = x - 10 ; }} // choque escaleras
  image(Personaje[R], x , y, 100, 100 );
  rect(960,7,30,200);
  if(( y < 207 )&&(y > 7 )){ if( x > 880){this.x = x - 10 ; }} // choque Libreria
  if(( y < 207 )&&(y > 7 )){ if( x > 820){QW.display() ; }} 
  rect(920,407,70,150);
  if(( y < 557 )&&(y > 407 )){ if( x > 840){this.x = x - 10 ; }} // choque cofre
  if(( y < 557 )&&(y > 407 )){ if( x > 800){QW.display() ; }}
}
