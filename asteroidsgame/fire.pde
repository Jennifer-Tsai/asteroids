class Fire extends GameObject {
  
  //transparency 
  int t;
  
  PVector nudge;
  
  Fire() {
  lives = 1;
  size = int(random(5, 12));
  t = int(random(200, 255));
  
  location = myShip.location.copy();
  nudge = myShip.direction.copy();
  nudge.rotate(PI);
  nudge.setMag(20);
  location.add(nudge);
  velocity = myShip.direction.copy(); 
  velocity.rotate(PI+random(-0.5, 0.5)); //180 degree
  velocity.setMag(5);
    
    
  }
  
  void act() {
    super.act();
    t = t - 10;
    if (t <= 0) lives = 0;
    
    
    
  }
  
  void show() {
   rectMode(CENTER);
   noStroke();
   fill(255, 0, 0, t);
   square(location.x, location.y, size);
   
    
    
    
  } 
  
  
}
