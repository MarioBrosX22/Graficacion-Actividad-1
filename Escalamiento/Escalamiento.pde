float rectX;  // Posición X del rectángulo
float rectY;  // Posición Y del rectángulo
float rectWidth = 100;  // Ancho inicial del rectángulo
float rectHeight = 50;  // Alto inicial del rectángulo
float scaleX = 1.0;     // Factor de escala en el eje X
float scaleY = 1.0;     // Factor de escala en el eje Y
float scaleSpeed = 0.01; // Velocidad de cambio de escala
float moveSpeed = 2;     // Velocidad de movimiento

void setup() {
  size(400, 400);
  rectX = width / 2;
  rectY = height / 2;
}

void draw() {
  background(255); // Fondo blanco

  // Escala el rectángulo
  scaleX += scaleSpeed;
  scaleY += scaleSpeed;

  // Mueve el rectángulo
  rectX += moveSpeed;

  // Dibuja el rectángulo escalado
  pushMatrix(); // Guarda la matriz de transformación actual
  translate(rectX, rectY); // Mueve el origen de coordenadas al centro del rectángulo
  scale(scaleX, scaleY);   // Aplica la escala
  rectMode(CENTER);
  fill(0, 0, 255); // Relleno azul
  rect(0, 0, rectWidth, rectHeight); // Rectángulo en el centro
  popMatrix(); // Restaura la matriz de transformación

  // Si el rectángulo se sale de la pantalla, reinicia su posición y escala
  if (rectX > width + rectWidth / 2) {
    rectX = -rectWidth / 2;
    rectY = random(height);
    scaleX = 1.0;
    scaleY = 1.0;
  }
}
