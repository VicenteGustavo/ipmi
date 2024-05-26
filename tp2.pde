//TP2
//Comision 5
// Gustavo Vicente(91560/1)


PFont fuente;
PImage imagen1, imagen2, imagen3; 
int pantalla, tiempo, suma, diametro;
boolean ultimaPantalla;
color colorDelBoton;


void setup(){
 size(640,480);
 fuente = loadFont("TrebuchetMS-Italic.vlw");
 textFont(fuente);
 textSize(45);
 imagen1 = loadImage("portada.jpg");
 imagen2 = loadImage("tortuga.jpg");
 imagen3 = loadImage("flamencos.jpg");
 pantalla = 0;
 suma = 1;
 diametro = 60;
 ultimaPantalla = false;
 colorDelBoton = color(18, 193, 45);
 tiempo = frameCount/2;
}

void draw(){
 if (pantalla == 0) {
  image(imagen1, 0, 0, width, height);
  push();
  rect(0, height/2, width, height/4);
  fill(0);
  pop();
  push();
  fill(188,51,51);
  textSize(30);
  text("Cuentos DE La Selva es un libro\n escrito por Horacio Quiroga \n y que apunta a un publico infantil", tiempo ,273);
  pop();
 }
  else if (pantalla == 1){
   image(imagen2, 0, 0, width, height);
   push();
   fill(188, 51, 51);
   textSize(28);
   text("Y como su nombre lo indica, todas estas\n pequeñas historias suceden en la Selva\n\n teniendo a varios animales como protagonistas\n de cada una de estas", 4, tiempo);
   
   pop();
  }
  else if (pantalla == 2){
    image(imagen3, 0, 0, width, height);
    push();
    textAlign(LEFT, TOP);
    fill(131, 32, 198);
    textSize(26);
    text("siendo las mas conocidas La Tortuga Gigante\n y Las Medias de Los Flamencos\n \n\n asi como tambien varias otras tales como\n El Loro Pelado o La Abeja Aragana", tiempo, tiempo);
    
    
    pop();
    push();
      fill(colorDelBoton);
      circle(600, 440, diametro);
     textSize ( 14);
        fill ( 225 , 0 ,0 );
         //text("Reiniciar", 573, 444);
    pop();
      }
  if (ultimaPantalla == false) {
    tiempo = tiempo + suma;
  if (tiempo >= 180 && pantalla != 3) {
    tiempo = 0;
    if (pantalla != 2) {
      pantalla++;
    } else if (pantalla == 2) {
      ultimaPantalla = true;
    } 
   }
  }
}
void mouseClicked() {
  push ();
  if (ultimaPantalla == true) {
    if (dist( 600 , 440 , mouseX, mouseY) < diametro/2) {
      pantalla = 0;
      tiempo = 0;
      suma = 1;
      ultimaPantalla = false;
      pop ();
    }
  }
}
void mouseMoved() {
  if (ultimaPantalla == true) {
    if (dist(600 , 440 , mouseX, mouseY) < diametro/2) {
      colorDelBoton = color(234, 115, 54);
      push();
       textSize ( 14);
        
        fill ( 225 , 0 ,0 );
         text("Reiniciar", 573, 444);
         pop();
    }   else {
       push ();  
      colorDelBoton = color(18, 193, 45);
        textSize ( 14);
        
        fill ( 225 , 0 ,0 );
         text("Reiniciar", 573, 444); 
         pop ();
    }   
  }
}  
