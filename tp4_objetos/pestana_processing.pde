//-------URL A VIDEO EXPLICATIVO https://youtu.be/qxXcl8LOyQ0
//TP4 Programación de objetos 



//declaración de la clase madre
Clase entorno;
int dirx=1;
int diry=1;

void setup() {
  entorno= new Clase();
  size(600, 600);
}


void draw() {
  


  //llamado a los métodos de la clase madre
  entorno.dibujar(); 
  entorno.actualizar();
  entorno.aplicarImagen();
}
void keyPressed() {
  //el metodo actualizar se llama dos veces ya que la función de teclas creo que 
  //corresponde aplicarla aquí también
  entorno.actualizar();
}
