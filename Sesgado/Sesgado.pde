float rectX;        // Posición X del rectángulo
float rectY;        // Posición Y del rectángulo
float shearAmount;  // Cantidad de sesgo
float speedX = 2;   // Velocidad de movimiento en el eje X

void setup() {
  size(400, 400);
  rectX = width / 2;
  rectY = height / 2;
  shearAmount = 0.2; // Cantidad de sesgo
}

void draw() {
  background(255); // Fondo blanco

  // Actualiza la posición del rectángulo
  rectX += speedX;

  // Dibuja el rectángulo sesgado
  pushMatrix(); // Guarda la matriz de transformación actual
  translate(rectX, rectY); // Mueve el origen de coordenadas al centro del rectángulo
  fill(0, 0, 255); // Relleno azul
  rectMode(CENTER);
  rect(0, 0, 100, 50); // Rectángulo en el centro
  popMatrix(); // Restaura la matriz de transformación

  // Si el rectángulo se sale de la pantalla por la derecha, reinicia su posición
  if (rectX > width + 50) {
    rectX = -50;
  }
}

// Función personalizada para aplicar el sesgo en el eje X
void applyShearX(float shear) {
  float[] matrix = {1, shear, 0, 1};
}
