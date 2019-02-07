/*
  Spaceship class
 Should extend Mover class and implement show.
 You may add additional methods to this class, for example "rotate" and "accelerate" 
 might be useful.
 */
class Spaceship extends Mover {

  // Initializing


  Spaceship(float x, float y) { 
    super(x, y);
  }

  Spaceship(float x, float y, float speed, float direction) {
    super(x, y, speed, direction);
    myColor = 0;
  }

  // Shape of the propulsion flame

  void thrusterShow() {
    pushMatrix();
    translate(x, y);
    stroke(0);
    rotate(radians(direction));
    fill(255, 100, 255);
    ellipse(-10, 0, 35, 10);
    popMatrix();
  }

  // Shape of the ship itself

  void show() {
    pushMatrix();
    translate(x, y);
    rotate(radians(direction));
    fill(0);
    stroke(255);
    beginShape();
    vertex(-10, 0);
    vertex(-17.5, -18.75);
    vertex(-10, -18.75);
    vertex(12.5, -7.5);
    vertex(50, 0);
    vertex(50, 0);
    vertex(12.5, 7.5);
    vertex(-10, 18.75);
    vertex(-17.5, 18.75);
    endShape(CLOSE);
    popMatrix();
  }
}
