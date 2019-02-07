//note that this class does NOT *NEED* to extend Mover but can if you like
class Star {
  
// Initializing

    float x_pos;
    float y_pos;
    float radius;
    
    public Star(float x, float y, float radius){
      x_pos = x;
      y_pos = y;
      this.radius = radius;
  }

// Individual star shape

    void show(){
      pushMatrix();
      translate(x_pos,y_pos);
      stroke(0);
      fill(251,255,227);
      ellipse(0,0,radius, radius);
      popMatrix();
    }
    
    
}
