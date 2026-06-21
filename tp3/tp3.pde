PImage img;
// Variables para la cantidad de casillas 
int columnas = 7; 
int filas = 12;

void setup() {
  size(800, 400); 
  img = loadImage("trabajo.png"); 
}

void draw() {
  background(255);
  
 
  if (img != null) {
    image(img, 0, 0, 400, 400);
  } else {
    fill(0);
  }
  
 
  pushMatrix();
  translate(400, 0); // Movemos el punto de origen a la mitad derecha
  
  float anchoCelda = 400.0 / columnas;
  float altoCelda = 400.0 / filas;
  
  //  Ciclos FOR anidados
  for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {
      float x = i * anchoCelda;
      float y = j * altoCelda;
      
      //el centro de la celda actual
      float centroX = x + anchoCelda / 2;
      float centroY = y + altoCelda / 2;
      
      // Uso de dist()
      //la distancia desde el mouse 
      float distanciaMouse = dist(mouseX - 400, mouseY, centroX, centroY);
      
      
      float angulo = calcularRotacion(distanciaMouse);
      
      //Rotate y Translate
      pushMatrix();
      translate(centroX, centroY); // Vamos al centro del cuadrado
      rotate(angulo);              // Rotamos 
      translate(-anchoCelda / 2, -altoCelda / 2); // Retrocedemos para dibujar desde la esquina
      
      // Condicionales (if - else)
      // Alternamos el patrón de degradado 
      boolean esBlancoANegro;
      if ((i + j) % 2 == 0) {
        esBlancoANegro = true;
      } else {
        esBlancoANegro = false;
      }
      
      //  función propia que NO retorna valor
      dibujarCelda(anchoCelda, altoCelda, esBlancoANegro);
      
      popMatrix();
    }
  }
  popMatrix();
}

// Función 1
void dibujarCelda(float w, float h, boolean direccion) {
  noStroke();
  
  // Bucle para pintar el degradado línea por línea
  for (int k = 0; k < w; k++) {
    float colorPixel;
    
    // la dirección del degradado
    if (direccion) {
      colorPixel = map(k, 0, w, 255, 0); // CONSTRICCIÓN: Uso de map()
    } else {
      colorPixel = map(k, 0, w, 0, 255);
    }
    
    // Si se hace CLICK y el mouse está en la derecha, agrega "estática" al degradado
    if (mousePressed && mouseX > 400) {
      colorPixel += random(-40, 40); 
    }
    
    fill(colorPixel);
    rect(k, 0, 1, h); 
  }
  
  //la línea de separación de los cuadrados
  stroke(0);        // Color negro para los bordes
  strokeWeight(1.5); // Grosor de la línea para que quede bien definido
  noFill();
  rect(0, 0, w, h);  //  el contorno
}

// Función 2
float calcularRotacion(float d) {
  // Si el mouse está cerca , el cuadrado rota
  if (d < 100 && mouseX > 400) {
    // Rota suavemente hasta un máximo
    return map(d, 0, 100, PI/6, 0); 
  } else {
    // Si el mouse está lejos, se mantiene derecho
    return 0; 
  }
}


// Modificar variables 
void keyPressed() {
  //  Reiniciar el programa
  if (key == 'r' || key == 'R') {
    columnas = 7;
    filas = 12;
  }
  
}
