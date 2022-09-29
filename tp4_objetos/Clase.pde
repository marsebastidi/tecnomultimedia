
//-----pestaña de Entorno-----


class Clase {
  //declaración de las instancias de las clases
  Figura circulo;
  Forma pelota;
  Display fondo;





  //declaración de las propiedades
  int posX, posY, tam;



  Clase() {
    //iniciación de los constructores de objetos
    circulo= new Figura(width/2, height/2, 50);
    pelota= new Forma(200, 200, 55);
    fondo= new Display();
  }





  void aplicarImagen() {
    PImage photo;
    photo=loadImage("ejemplo_clase_imagen.png");
    imageMode(CORNER);
    if (key=='p') {
      image(photo, mouseX, mouseY);
    }
  }


  void dibujar() {
  fondo.dibujar();
    circulo.dibujar();
    pelota.dibujar();
    
  }

  void actualizar() {
    
    circulo.mover();
    pelota.actualizar();
    fondo.actualizar();
  }
}
