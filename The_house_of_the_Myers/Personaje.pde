int R = 0 ; // animación
int ID = 0 ; // Abrir cerrar diario 
int x = 450 ; // ubicación x
int y = 300 ; // ubicación y
int D = 0 ; // numero de paginas del diario
int DD = 0 ; // numero de paginas del diario actual
void persona(){
  if(keyPressed&&(key==CODED)){//se revisa que se este presionando una tecla
    if(keyCode==LEFT){//se pregunta si se esta precionanda izquierda
      this.x = x - 10;
      if(R == 3){
      this.R = 2;
      }else{this.R = 3;}
      
    }else if(keyCode==RIGHT){// se pregunta si se esta precionando derecha
      this.x = x + 10;
      if(R == 1){
        this.R = 0;
      }else{this.R = 1 ;}
    }if(keyCode==UP){//se pregunta si se esta precionanda izquierda
      this.y = y - 10;
      if( R == 4 ){
        this.R= 5 ;
      }else{this.R= 4;}
    }else if(keyCode==DOWN){// se pregunta si se esta precionando derecha
      this.y = y + 10;
      if(R== 7){
        this.R=6 ;
      }else{this.R = 7;}}
  }
  if(x < 11){ this.x = x + 10 ; }
  if(x > 870){ this.x = x - 10 ; }
  if(y < 54){ this.y = y + 10 ; }
  if(y > 589){ this.y = y - 10 ; }
  image(Personaje[R], x , y, 100, 100 );
  if(keyPressed){
    if(key == 'x'){if(ID == 1){this.ID = 0;}else{this.ID = 1;}}}
  if(ID == 1){
    if(keyPressed){
      if(key == 'c' ){
        if(DD <= D){ this.DD = DD + 1;}}
        if(key == 'v' ){
          if((D <= DD)&&(DD >= 1)){this.DD = DD - 1;}}}
      image(Diario[DD], 0,0, 1000,700);
  }else{image(Diario[0], 857,580, 150 ,110);}
}
void cofre(){
  
}
