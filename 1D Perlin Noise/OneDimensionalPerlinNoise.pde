/*
* Perlin Noise.
 */

float time = 0;

void setup() {
  size(600, 400);
}

void draw() {
  background(0);
  fill(255);

  time += 0.05;

  float x = noise(time);
  x = map(x, 0, 1, 0, width);

  ellipse(x, height/2, 40, 40);
}
