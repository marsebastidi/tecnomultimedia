class Figura {
  int x, y, tam;

  Figura(int x_, int y_, int tam_) {
    //actualizo los valores de las variables temporales de la función con parámetros
    x=x_;
    y=y_;
    tam= tam_;
  }
  void dibujar() { //diseño del círculo amarillo
    pushStyle();
    noStroke();
    fill(242, 242, 49);
    circle(this.x, this.y, this.tam);
    popStyle();
  }

  void mover() {
    //seteo de teclas y cálculos para direcciones del objeto interactivo
    //chequear no tener el bloq mayus activado


    int direccion= 6;
    if (key=='f') {//derecha
      this.x= this.x+direccion;}

    if (key== 's') {//izquierda
      this.x= this.x-direccion;
    }

    if (key== 'e') {//arriba
      this.y= this.y-direccion;
    }

    if (key== 'd') {//abajo
      this.y= this.y+direccion;
    }

    if (key== 'w') {//diagonal ascendente izquierda
      this.x= this.x-direccion;
      this.y= this.y-direccion;
    }

    if (key== 'v') {//diagonal descendente derecha
      this.x= this.x+direccion;
      this.y= this.y+direccion;
    }

    if (key== 'x') {//diagonal descendente izquierda
      this.x=this.x-direccion;
      this.y= this.y+direccion;
    }

    if (key== 'r') {
      this.x= this.x+direccion; //diagonal ascendente derecha
      this.y= this.y-direccion;
    }

    // establecer límites para que el círculo al pasar el width, 
    // height o 0 en ambos ejes, retorne a nuestro campo interactivo

    if (this.x>width+this.tam/2 ) {
      this.x=0+this.tam/2;
    } 

    if (this.x<0+tam/2) {
      this.x=width+tam/2;
    }

    if (this.y>height+this.tam/2) {
      this.y= 0+this.tam/2;
      this.x= width/2+this.tam/2;
    }

    if (this.y<0+tam/2) {
      this.y= height+tam/2;
    }
  }
}
