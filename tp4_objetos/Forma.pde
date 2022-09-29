
//-------objeto autónomo------

class Forma {
  int posX, posY, t, direccionX, direccionY;
  float relleno;



  Forma(int posX_, int posY_, int t_) {
    posX= posX_;
    posY= posY_;
    t= t_;
    posX+=direccionX*3;
    posY+=direccionX*3.2;
  }

  void dibujar() { //display del objeto pelota turquesa


    pushStyle();
    noStroke();
    fill(65, 229, 151);
    ellipse(posX, posY, t, t);
    popStyle();
  }



  void actualizar() {


    this.posX+=dirx*2;
    this.posY+=diry*3;


    //establecer limites del rebote para la figura autónoma 


    if (this.posX>width-t/2) {
      dirx=dirx*(-1);
    }

    if (this.posX<0+t/2) {
      dirx=dirx*(-1);
    }

    if (this.posY>height-t/2) {
      diry=diry*(-1);
    }

    if (this.posY<0+t/2) {
      diry=diry*(-1);
    }
  }
}



  
