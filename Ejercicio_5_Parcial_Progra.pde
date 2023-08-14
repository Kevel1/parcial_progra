color bgColor = color(30); // Color de fondo oscuro
color lineColor = color(255, 200, 200); // Color pastel de la línea

void setup() {
  size(800, 600);
  background(bgColor);
}

void draw() {
  background(bgColor);
  
  // Dibujar línea desde el centro de la pantalla hasta la posición del mouse
  stroke(lineColor);
  line(width / 2, height / 2, mouseX, mouseY);
}
