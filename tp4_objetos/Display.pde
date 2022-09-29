class Display {
 float color1, color2, color3;
 
 
  Display() {
    color1= 206;
    color2= 67;
    color3= 88;
   
  }

  void dibujar() {
    background(color1, color2, color3);

  }
  void actualizar(){
   if(key == 'g'){
     color1= random(200, 25);
     color2=random(170,15)%2;
     color3= random(255,5)*1.5;
   } 
   
   if( key== 'h'){
     color1= random(250, 25);
     color2=random(180,15)%2;
     color3= random(255,5)/3;
  }
  
  if( key== 'j'){
    color1= random(175, 36)%2;
    color2=random(224, 6)/2;
    color3= random(199,8)*0.5;
}   

     
}  
}
