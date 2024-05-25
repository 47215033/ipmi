//PIA SENA IKES
//LEJAGO, 119145/0

int miVariable; 
String texto;
PImage img;
PImage img3; 
PImage img4; 
 int pantalla = 0;
boolean ultimaPantalla = false;
float tiempo = 0;
int suma = 1;
float diametro = 50;  
int colorDelBoton;

void setup(){
size (640,480);
textSize (20);
img4 = loadImage ( "imagen4.jpeg"); 
img3 = loadImage(" imagen3.jpeg" );
img = loadImage ( " imagen1.jpeg" );
 
texto = "El objetivo del juego SUBWAY SURFERS es huir del Inspector surfeando\n trenes y esquivando obstáculos mientras intentas\nconseguir el puntaje más alto posible.";

println(frameCount); 

}
void draw (){ 
background(255);
miVariable = frameCount/2; 
println(miVariable) ; 
image (img, 0, 0); 
fill(0);
textSize(20); 
text(texto, miVariable, 50); 
if (frameCount >= 700) { image(img3, 0, 0) ;
fill(255, 0, 0);
 
textSize(27);
textAlign (LEFT);
text("desliza a la izquierda o derecha para\n cambiar de pista, desliza hacia arriba\n para saltar y hacia abajo para deslizarte.", 100, miVariable -120);

 
}   
  
  
  
 if (frameCount >=1000){ image(img4, 0, 0); 
   textSize(25); 
  fill(255 );
textAlign (CENTER);
 
 
 float textoY= map(frameCount, 900, 1600, height/2, height + 100);
 text(" Usa las monedas para comprar mejoras\n y nuevos personajes. Completa misiones\npara obtener recompensas adicionales", width/2, textoY);
 
 fill(colorDelBoton);
    ellipse(583, 162, diametro, diametro);
    fill(255);
    textSize(20);
    textAlign(CENTER);
    text("Reiniciar", 583, 167);
    ultimaPantalla = true;
 }
 
 }
 
    
 void mouseClicked() {
  if (ultimaPantalla == true) {
    if (dist(583, 172, mouseX, mouseY) < diametro / 2) {
      pantalla = 0;
      tiempo = 0;
      suma= 1; 
      ultimaPantalla= false; 
    frameCount = 0;  
    textSize(20);
    }
  }
 }

 
  void mouseMoved () {
if (ultimaPantalla == true) {
if (dist (583, 162, mouseX, mouseY) < diametro/2)  {
colorDelBoton = color(255, 25, 19) ;
} else {
colorDelBoton = color(25, 56, 8) ; 
  }

  
 }



} 
