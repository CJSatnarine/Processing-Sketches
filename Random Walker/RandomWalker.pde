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
  int x = 0;
  int y = 0;

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
    int xStep = floor(random(3)) - 1;
    int yStep = floor(random(3)) - 1;

    this.x += xStep;
    this.y += yStep;
  }
}
