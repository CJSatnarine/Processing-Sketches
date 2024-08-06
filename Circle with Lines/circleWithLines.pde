/*
*  Random lines within a circle. 
*/

void setup() {
  size(800, 800);
  background(0);
}

void draw() {
  float x = 400; 
  float y = 400;
  float circleSize = 400;
  float radius = circleSize / 2;
  
  float a = random(TWO_PI);
  float x1 = cos(a) * radius + x;
  float y1 = sin(a) * radius + y;
  a = random(TWO_PI);
  float x2 = cos(a) * radius + x;
  float y2 = sin(a) * radius + y;
  
  // Drawing the lines. 
  stroke(random(255));
  line(x1, y1, x2, y2);
}
