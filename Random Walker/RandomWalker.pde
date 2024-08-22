/*
 *  Random Walker.
 *
 * Taken from: https://natureofcode.com/random/
 */
Walker walker;

void setup() {
  size(800, 800);
  walker = new Walker();
  background(0);
}

void draw() {
  walker.step();
  walker.show(true);
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

  void show(boolean isWhite) {
    // To make the walker white. 
    if (isWhite) {
      stroke(255);
    }
    else {
      // To make the walker a random RBG colour. 
      int randomNumber = floor(random(0, 3));

      if (randomNumber == 0) {
        stroke(255, 0, 0);
      } else if (randomNumber == 1) {
        stroke(0, 255, 0);
      } else {
        stroke(0, 0, 255); 
      }
    }
    
    point(this.x, this.y);
  }

  void step() {
    float xStep = random(-1, 1);
    float yStep = random(-1, 1);

    this.x += xStep;
    this.y += yStep;
  }
}
