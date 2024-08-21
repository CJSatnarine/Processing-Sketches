/*
 *  Random Walker.
 *
 * Taken from: https://natureofcode.com/random/
 */
Walker walker;

void setup() {
  size(400, 400);
  walker = new Walker();
  background(0);
}

void draw() {
  walker.step();
  walker.show();
}

class Walker {
  // X and Y positions of walker.
  float x = 0;
  float y = 0;

  // Constructor.
  Walker() {
    this.x = width / 2;
    this.y = height / 2;
  }

  void show() {
    stroke(255);
    point(this.x, this.y);
  }

  void step() {
    float xStep = random(-1, 1);
    float yStep = random(-1, 1);

    this.x += xStep;
    this.y += yStep;
  }
}
