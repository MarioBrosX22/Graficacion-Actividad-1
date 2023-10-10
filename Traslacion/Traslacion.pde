float circleX;  // Posición X del círculo
float circleY;  // Posición Y del círculo
float speedX = 2; // Velocidad de movimiento en el eje X
float speedY = 1; // Velocidad de movimiento en el eje Y

void setup() {
  size(400, 400);
  circleX = width / 2;
  circleY = height / 2;
}

void draw() {
  background(255); // Fondo blanco
  fill(0, 0, 255); // Relleno azul
  // Actualiza la posición del círculo
  circleX += speedX;
  circleY += speedY;

  // Dibuja el círculo
  ellipse(circleX, circleY, 50, 50); // Dibuja un círculo en la posición actual

  // Verifica los límites de la ventana
  if (circleX > width || circleX < 0) {
    speedX *= -1; // Invierte la dirección en el eje X si alcanza los bordes horizontales
  }

  if (circleY > height || circleY < 0) {
    speedY *= -1; // Invierte la dirección en el eje Y si alcanza los bordes verticales
  }
}
