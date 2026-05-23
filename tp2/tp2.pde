int pantalla = 0;
int tiempo;
float animacionY; 

PImage img1, img2, img3, img4, img5;
PFont miFuente;

void setup() {
  size(640, 480);
  tiempo = millis();
  animacionY = 480;

  img1 = loadImage("light.jpg");
  img2 = loadImage("l.jpg");
  img3 = loadImage("ryuk.jpg");
  img4 = loadImage("libreta.jpg");
  img5 = loadImage("final.jpg");

  miFuente = loadFont("fuente.vlw");
  textFont(miFuente);
}

void draw() {
  // Cambio de pantalla solo
  if (pantalla > 0 && pantalla < 5) {
    if (millis() - tiempo > 10000) { 
      pantalla++;
      tiempo = millis();
      animacionY = 480; 
    }
  }

  // Pantalla inicio
  if (pantalla == 0) {
    background(0); // Fondo 
    fill(255); // Texto blanco
    textSize(50);
    text("DEATH NOTE", 160, 200);

    dibujarBoton(220, 280, 200, 60, "INICIAR");
  }

  // Pantalla: Light
  if (pantalla == 1) {
    image(img1, 0, 0, 640, 480);
    String textoLight = "Light Yagami es un estudiante brillante que encuentra la death note capaz de matar a cualquier persona cuyo nombre sea escrito en él. Convencido de que puede crear un mundo “perfecto”, comienza a eliminar criminales bajo el alias de Kira, atrayendo la atención mundial.";
    mostrarTextoAnimado(textoLight);
  }

  // Pantalla: L
  if (pantalla == 2) {
    image(img2, 0, 0, 640, 480);
    String textoL = "L es un detective extremadamente inteligente que sospecha que Light Yagami es Kira y decide acercarse a él para investigarlo directamente. Entre ambos se desarrolla una intensa guerra mental llena de estrategias, engaños y desafíos para descubrir quién vencerá primero.";
    mostrarTextoAnimado(textoL);
  }

  // Pantalla: Ryuk
  if (pantalla == 3) {
    image(img3, 0, 0, 640, 480);
    String textoRyuk = "Ryuk es el shinigami dueño de la libreta, es imparcial sobre el humano dueño de ella. Ofrece un trato con los humanos portadores de la libreta sobre compartir sus ojos Shinigami, que le permite ver el nombre de las personas con solo verlas, gran ventaja para los portadores de la libreta. Y le encantan las manzanas";
    mostrarTextoAnimado(textoRyuk);
  }

  // Pantalla: Death Note
  if (pantalla == 4) {
    image(img4, 0, 0, 640, 480);

    // Condicional
    if (mouseY > 300 || mousePressed) {
      fill(255, 255, 255, 220); // Caja blanca
      rect(40, 340, 560, 100);
      
      fill(0); 
      textSize(25);
      text("REGLA: El humano cuyo nombre sea escrito en esta libreta morirá.", 60, 360, 520, 100);
    } else {
      mostrarTextoAnimado("La Death Note arruina la vida de las personas que la hayan usado.\n(Pasa el mouse por aquí abajo para revelar su regla)");
    }
  }

  // Fin
  if (pantalla == 5) {
    image(img5, 0, 0, 640, 480);
    
    fill(255, 255, 255, 200); // Caja blanca
    rect(140, 100, 360, 80);
    
    fill(0); // Texto en negro
    textSize(50);
    text("FIN DEL ANIME", 150, 155);

    dibujarBoton(220, 320, 200, 60, "REINICIAR");
  }
}

// Funcion
void mostrarTextoAnimado(String texto) {
  // Fondo blanco semitransparente
  fill(255, 255, 255, 210); 
  rect(40, animacionY - 10, 560, 140); //caja ancha

  fill(0); // texto negro
  textSize(20); 

  text(texto, 60, animacionY, 520, 140); 

  // Sube hasta Y = 320 y ahí frena
  if (animacionY > 320) {
    animacionY = animacionY - 2;
  }
}

// Funcion
void dibujarBoton(int x, int y, int ancho, int alto, String textoBoton) {
  fill(255); // Interior del botón blanco
  rect(x, y, ancho, alto);
  fill(0);   // Texto del botón negro
  textSize(25);
  text(textoBoton, x + 40, y + 40);
}

// Clicks 
void mousePressed() {
  if (pantalla == 0) {
    // Si estamos en el inicio y hacen clic en el botón
    if (mouseX > 220 && mouseX < 420 && mouseY > 280 && mouseY < 340) {
      pantalla = 1;
      tiempo = millis();
      animacionY = 480;
    }
  } 
  else if (pantalla > 0 && pantalla < 5) {
    // Avanzar pantalla con click
    pantalla++;
    tiempo = millis();
    animacionY = 480;
  } 
  else if (pantalla == 5) {
    // Si estamos en el final y hacen clic en reiniciar
    if (mouseX > 220 && mouseX < 420 && mouseY > 320 && mouseY < 380) {
      pantalla = 0;
      tiempo = millis();
    }
  }
}
