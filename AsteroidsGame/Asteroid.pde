/*
  Asteroid class
 Should extend Mover class and implement show.
 
 Initially, your asteroid may just be a simple circle or square
 but the final program should use "beginShap(), vertex(), and endShape()"
 to render the asteroid.
 */
class Asteroid extends Mover {   

  // Initializing

  Asteroid(float x, float y) { 
    super(x, y);
  }

  // Constructer

  Asteroid(float x, float y, float speed, float direction) {
    super(x, y, speed, direction);
    myColor = 0; 
    int v = (int)random(3);
    scale(random(4));
    if (v == 0) {
      xCoords = new float[5];
      yCoords = new float[5];
      float scale = random(1, 2);
      float perimeter = 0;
      xCoords[0] = (40 + random(-10, 10))*scale;
      xCoords[1] = (0 + random(-10, 10))*scale;
      xCoords[2] = (-20 + random(-10, 10))*scale;
      xCoords[3] = (-30 + random(-10, 10))*scale;
      xCoords[4] = (20 + random(-10, 10))*scale;

      yCoords[0] = (30 + random(-10, 10))*scale;
      yCoords[1] = (50 + random(-10, 10))*scale;
      yCoords[2] = (30 + random(-10, 10))*scale;
      yCoords[3] = (-10 + random(-10, 10))*scale;
      yCoords[4] = (-20 + random(-10, 10))*scale;
      for (int i = 0; i < xCoords.length-1; i++) {
        perimeter += dist(xCoords[i], yCoords[i], xCoords[i+1], yCoords[i+1]);
      }
      radius = scale*perimeter/(2*(float)Math.PI);
    } else if ( v == 1 ) {
      xCoords = new float[6];
      yCoords = new float[6];
      float scale = random(1, 2);
      float perimeter = 0;
      xCoords[0] = (30 + random(-10, 10))*scale;
      xCoords[1] = (-10 + random(-10, 10))*scale;
      xCoords[2] = (-60 + random(-10, 10))*scale;
      xCoords[3] = (-30 + random(-10, 10))*scale;
      xCoords[4] = (-10 + random(-10, 10))*scale;
      xCoords[5] = (30 + random(-10, 10))*scale;

      yCoords[0] = (10 + random(-10, 10))*scale;
      yCoords[1] = (30 + random(-10, 10))*scale;
      yCoords[2] = (10 + random(-10, 10))*scale;
      yCoords[3] = (-10 + random(-10, 10))*scale;
      yCoords[4] = (-40 + random(-10, 10))*scale;
      yCoords[5] = (-30 + random(-10, 10))*scale;
      for (int i = 0; i < xCoords.length-1; i++) {
        perimeter += dist(xCoords[i], yCoords[i], xCoords[i+1], yCoords[i+1]);
      }
      radius = scale*perimeter/(2*(float)Math.PI);
    } else {
      xCoords = new float[7];
      yCoords = new float[7];
      float scale = random(1, 2);
      float perimeter = 0;
      xCoords[0] = (50 + random(-10, 10))*scale;
      xCoords[1] = (60 + random(-10, 10))*scale;
      xCoords[2] = (0 + random(-10, 10))*scale;
      xCoords[3] = (-20 + random(-10, 10))*scale;
      xCoords[4] = (-30 + random(-10, 10))*scale;
      xCoords[5] = (10 + random(-10, 10))*scale;
      xCoords[6] = (30 + random(-10, 10))*scale;

      yCoords[0] = (0 + random(-10, 10))*scale;
      yCoords[1] = (30 + random(-10, 10))*scale;
      yCoords[2] = (60 + random(-10, 10))*scale;
      yCoords[3] = (30 + random(-10, 10))*scale;
      yCoords[4] = (-30 + random(-10, 10))*scale;
      yCoords[5] = (-40 + random(-10, 10))*scale;
      yCoords[6] = (-10 + random(-10, 10))*scale;
      for (int i = 0; i < xCoords.length-1; i++) {
        perimeter += dist(xCoords[i], yCoords[i], xCoords[i+1], yCoords[i+1]);
      }
      radius = scale*perimeter/(2*(float)Math.PI);
    }
  }

  float[] xCoords;
  float[] yCoords;

  // Shape of the Asteroids

  void show() {
    pushMatrix();
    translate(x, y);
    rotate(radians(direction));
    stroke(255);
    fill(0);
    beginShape();
    /*for ( int i = 0; i < xCoords.length; i++) { 
     vertex(xCoords[i], yCoords[i]);
     }*/
    endShape(CLOSE);

    ellipse(0, 0, radius, radius);
    popMatrix();
  }

  // Asteroid Collision Detection
  float getRadius() {
    return radius;
  }
  
  float getX(){
    return x;
  }
  
  float getY(){
    return y;
  }
}
