color bgColor = color(0, 0, 50); // Azul marino como color de fondo
color[] circleColors = {color(255, 200, 200), color(200, 255, 200), color(200, 200, 255)}; // Colores pastel de los círculos

void setup() {
  size(800, 600);
  background(bgColor);
}

void draw() {
  // No es necesario implementar nada aquí para este ejemplo
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    drawRandomCircle(circleColors[0]);
  } else if (key == 'g' || key == 'G') {
    drawRandomCircle(circleColors[1]);
  } else if (key == 'b' || key == 'B') {
    drawRandomCircle(circleColors[2]);
  }
}

void drawRandomCircle(color c) {
  float x = random(width);
  float y = random(height);
  float diameter = random(20, 100);
  
  fill(c);
  noStroke();
  ellipse(x, y, diameter, diameter);
}
