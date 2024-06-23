// PIA SENA IKES
// https://youtu.be/7V3sJuDwS44
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
       
 float distan = dist (mouseX, mouseY, x * tam, y* tam);
        float tono = distan * 100/ dist (width, height, 0, 0);
        fill(246, 162, 247, tono);
        ellipse(posX, posY, 31, 31); 
       
    }
  }
}

   
   void mousePressed (){
     cant--;
   }
     void keyPressed (){
   cant = 7; 
 }
