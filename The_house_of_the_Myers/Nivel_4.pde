
void nivel_4(){
  image(Mapa[3], 0 , 0, 1000, 690 );
  fill(0);text(mouseX ,20 ,20);text(mouseY, 20 , 70);
  if( x > 311 ){if(keyCode == LEFT){this.x = x + 10 ; }}  // Muros
  if( x < 630 ){if(keyCode == RIGHT){this.x = x - 10 ; }} // Muro
  persona();
}
