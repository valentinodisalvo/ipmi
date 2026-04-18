PImage miImagen;

void setup() { 
  size(800, 400); 
  miImagen = loadImage("abuelo.jpg"); 
}

void draw() { 
  image(miImagen, 0, 0, 400, 400); 

  // cielo
  fill(190);
  rect(620, 40, 160, 200);
  
  // montaña chica
  fill(170);
  triangle(660, 110, 630, 180, 690, 180);

  // nieve montaña chica
  fill(255);
  triangle(660, 110, 650, 135, 670, 135);

  // montaña grande
  fill(150);
  triangle(700, 90, 660, 190, 740, 190);

  // nieve montaña grande
  fill(255);
  triangle(700, 90, 685, 120, 715, 120);

  // colina
  fill(120,140,100);
  rect(620, 180, 160, 60);

  // árbol
  fill(90, 60, 40);
  rect(740, 190, 8, 25);

  fill(70, 120, 70); 
  triangle(744, 170, 730, 200, 758, 200);


  //ABUELO

  // torso
  fill(200, 50, 40);
  rect(400, 250, 260, 150);

  // cuello
  fill(210, 180, 140);
  rect(490, 210, 30, 50);

  // cabeza
  fill(235, 210, 170);
  ellipse(520, 180, 140, 150);

  // oreja
  fill(220,190,150);
  ellipse(445, 185, 22, 32);

  // pelo
  fill(210);
  ellipse(515, 120, 100, 40);

  // ojos
  fill(0);
  ellipse(550, 178, 4, 4);
  ellipse(570, 180, 4, 4);

  // nariz
  fill(220,180,140);
  triangle(570, 185, 600, 195, 570, 205);

  // boca
  stroke(100,60,50);
  strokeWeight(2);
  line(535, 215, 575, 220);
  
  //NIETO

 // cuerpo
  fill(200, 50, 40);
  rect(580, 300, 160, 100);

 // cuello 
  fill(210, 180, 140);
  rect(645, 285, 20, 20);

 // cabeza 
  fill(245, 225, 180);
  ellipse(655, 260, 70, 80);

 // ojo 
  fill(255);
  ellipse(640, 254, 10, 6);

 // pupila 
  fill(0);
  ellipse(637, 252, 3, 3);

 // pelo 
  fill(230, 210, 120);
  ellipse(660, 235, 60, 30);

  ellipse(685, 260, 30, 40);
  ellipse(700, 275, 20, 30);

// nariz 
  fill(230,200,160);
  triangle(605, 272, 630, 265, 630, 280);

// gorro rojo 
  fill(200, 50, 40);
  triangle(660, 200, 690, 235, 630, 235);

// mano 
  fill(240, 210, 170);
  triangle(500, 280, 540, 270, 530, 300);

  stroke(200, 170, 140);
  strokeWeight(1);
  line(520, 275, 525, 295);
  noStroke();

 // brazo
  fill(0);
  triangle(610, 330, 520, 285, 570, 330);

 // boca
  stroke(120,70,60);
  strokeWeight(2);
  line(630, 290, 655, 285);
  noStroke();
}
 

    
