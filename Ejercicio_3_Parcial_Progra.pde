float x; // Posición en el eje x
float y; // Posición en el eje y
float speedX; // Velocidad horizontal
float speedY; // Velocidad vertical
int diameter = 50; // Diámetro de la figura

void setup() {
  size(800, 600);
  x = random(width);
  y = random(height);
  speedX = random(2, 4);
  speedY = random(1, 3);
}

void draw() {
  background(255);
  
  // Actualizar la posición de la figura en cada cuadro
  updatePosition();
  
  // Dibujar la figura (en este caso, un círculo)
  ellipse(x, y, diameter, diameter);
}

void updatePosition() {
  // Actualizar la posición usando ciclos
  for (int i = 0; i < frameRate / 30; i++) { // Dividimos frameRate por 30 para suavizar el movimiento
    x += speedX;
    y += speedY;
    
    // Comprobar bordes de la pantalla y rebotar
    if (x > width - diameter / 2 || x < diameter / 2) {
      speedX *= -1;
    }
    if (y > height - diameter / 2 || y < diameter / 2) {
      speedY *= -1;
    }
  }
}
