color[] colors = {color(170,178,255), color(255,252,170), color(170,255,249), color(255,170,177), color(170,255,185)};
int currentColorIndex = 0;

void setup() {
  size(800, 600);
  rectMode(CENTER);
  fill(colors[currentColorIndex]);
}

void draw() {
  background(2,12,108);
  rect(width / 2, height / 2, 150, 150);
}

void mousePressed() {
  currentColorIndex = (currentColorIndex + 1) % colors.length;
  fill(colors[currentColorIndex]);
}
