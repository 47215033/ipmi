// PIA SENAIKES
//https://youtu.be/AtegswQ4kew
 
 int cant = 7;   
int tam = 30; 
PImage img;
 

 
void setup() {
  size(800, 400);
  img = loadImage("opart (1).jpeg");
   
}
void draw() {
  background( 198, 32, 25);
  image(img, 0, 0);

  stroke( 255);
  noFill();
  for (int x = 0; x < cant; x++) {
    for (int y = 0; y < cant; y++) {
      
        
   float posX= x * (tam + 30) + 420; 
  
float posY= y * (tam + 28)+ 27;
      
      if ((x + y) % 2 == 0) {
            noFill();     
      } else {
         
        noFill ();
      }
      if ((x + y) % 2 == 0) {
       
        stroke(120);
 
      } else{
        stroke(176);
      }
        if ((x + y) % 2 == 0) {
          strokeWeight(2);
        } else{
           strokeWeight(1);
        }
 
        float tono = calcularColor(mouseX, mouseY, x * tam, y * tam);
      dibujarElipse(posX, posY, tono);  
    }
  }
}

void mousePressed() {
  if (mouseX > width / 2) {
  cant--;
}
}
void keyPressed() {
 if (mouseX > width / 2) {
  if (key == 'r' || key == 'R') {
    cant = 7;
    tam = 30;  
  }
}
}

 float calcularColor(int x1, int y1, int x, int  y) {
  float distan = dist(x1, y1, x, y);
  return distan * 100 / dist(width, height, 0, 0);
}

 void dibujarElipse(float x, float y, float tono) {
  float tamano = 31; 
  fill(246, 162, 247, tono);
  ellipse(x, y, tamano, tamano);
}
