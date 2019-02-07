/* * * * * * * * * * * * * * * * * * * * * * *
 Class variable declarations here
 */
Spaceship player1;
Asteroid[] asteroids;
Star[] starField;


/*
  Track User keyboard input
 */
boolean ROTATE_LEFT;  //User is pressing <-
boolean ROTATE_RIGHT; //User is pressing ->
boolean MOVE_FORWARD; //User is pressing ^ arrow
boolean SPACE_BAR;  //User is pressing space bar
boolean HYPERSPACE;


/* * * * * * * * * * * * * * * * * * * * * * *
 Initialize all of your variables and game state here
 */
public void setup() {
  size(1900, 1000);

  //initialize your asteroid array and fill it

  //initialize ship

  //initialize starfield
  starField = new Star[1000];
  for (int i = 0; i < starField.length; i++) {

    int x = (int)(2*width*Math.random());
    int y = (int)(2*height*Math.random());
    ;
    int r = (int)(3*Math.random())+2;
    starField[i] = new Star(x, y, r);
  }
  player1 = new Spaceship(950, 500, 0, 0);

  asteroids = new Asteroid[2];
  for (int i = 0; i < asteroids.length; i++) {
    asteroids[i] = new Asteroid(random(1900), random(1000), 5, random(360));
  }
}


/* * * * * * * * * * * * * * * * * * * * * * *
 Drawing work here
 */
public void draw() {
  //your code here
  background(0);

  //Draw Starfield first 
  for (int i = 0; i < starField.length; i++) {
    starField[i].show();
  }
  //TODO: Part I

  //Check bullet collisions
  //TODO: Part III or IV - for not just leave this comment

  //TODO: Part II, Update each of the Asteroids internals
  for (int i = 0; i < asteroids.length; i++) {
    asteroids[i].update();
    asteroids[i].show();
  }
  checkOnAsteroids();

  //Check for asteroid collisions against other asteroids and alter course
  //TODO: Part III, for now keep this comment in place

  //Draw asteroids
  //TODO: Part II

  //Update spaceship
  //TODO: Part I
  player1.update();

  //Check for ship collision agaist asteroids
  //TODO: Part II or III

  //Draw spaceship & and its bullets
  //TODO: Part I, for now just render ship
  if (MOVE_FORWARD == true || ROTATE_LEFT == true || ROTATE_RIGHT == true) {
    player1.thrusterShow();
  }
  player1.show();
  player1.movement();
  //TODO: Part IV - we will use a new feature in Java called an ArrayList, 
  //so for now we'll just leave this comment and come back to it in a bit. 

  //Update score
  //TODO: Keep track of a score and output the score at the top right
}



/* * * * * * * * * * * * * * * * * * * * * * *
 Record relevent key presses for our game
 */
void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      ROTATE_LEFT = true;
      MOVE_FORWARD = false;
    } else if ( keyCode == RIGHT ) {
      ROTATE_RIGHT = true;
      MOVE_FORWARD = false;
    } else if (keyCode == UP) {
      MOVE_FORWARD = true;
    }
  }

  //32 is spacebar
  if (keyCode == 32) {  
    SPACE_BAR = true;
  }

  if (keyCode == 72) {
    HYPERSPACE = true;
  }
}

void checkOnAsteroids() {
  for (int i = 0; i < asteroids.length; i++) {
    Asteroid a = asteroids[i];
    for (int j = 0; j < asteroids.length; j++) {
      Asteroid a2 = asteroids[j];
      if (a != a2 && a.collidingWith(a2)) {
        a.direction += 180;
        a.speed += 1;
        }  
      }
  }
}


/* * * * * * * * * * * * * * * * * * * * * * *
 Record relevant key releases for our game.
 */
void keyReleased() {  
  if (key == CODED) { 
    if (keyCode == LEFT) {
      ROTATE_LEFT = false;
    } else if ( keyCode == RIGHT ) {
      ROTATE_RIGHT = false;
    } else if (keyCode == UP) {
      MOVE_FORWARD = false;
    }
  }
  if (keyCode == 32) {
    SPACE_BAR = false;
  }
  if (keyCode == 72) {
    HYPERSPACE = false;
  }
}

    //your code here
