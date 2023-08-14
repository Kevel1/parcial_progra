void setup() {
  size(800, 600);
  background(20, 20, 20);
  noLoop();
}

void draw() {
  for (int i = 0; i < 150; i++) {
    drawRandomShape();
  }
}

void drawRandomShape() {
  String shapeType = random(2) > 1 ? "circle" : "rectangle";
  color fillColor = color(random(100, 255), random(100, 255), random(100, 255), random(150, 200));
  float x = random(width);
  float y = random(height);
  float size = random(20, 100);
  
  fill(fillColor);
  noStroke();
  
  if (shapeType.equals("circle")) {
    ellipse(x, y, size, size);
  } else if (shapeType.equals("rectangle")) {
    float rectWidth = random(20, 100);
    float rectHeight = random(20, 100);
    pushMatrix();
    translate(x, y);
    rotate(random(TWO_PI));
    rectMode(CENTER);
    rect(0, 0, rectWidth, rectHeight);
    popMatrix();
  }
}
