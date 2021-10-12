class Particles extends GameObject {
  
  //variables 
  int t; //transparency
  
  PVector explode;
  
 
   
  Particles(int x, int y) {
  lives = 1;
  size = int(random(5, 12));
  t = int(random(200, 255));
  
  location = myShip.location.copy();
  explode = myShip.direction.copy();
  explode.rotate(random(0, 2*PI));
  location.add(explode);
  explode.setMag(10);
  velocity = myShip.direction.copy(); 
  velocity.rotate(PI+random(-0.5, 0.5)); //180 degree
  velocity.setMag(3);
    
    
  }
  
  void show () {
   noStroke();
   fill(255, 0, 0, t);
   circle(location.x, location.y, size);
    
    
    
  }
  
  void act () {
    super.act();
    t = t - 5;
    if (t <= 0) lives = 0;
    
    
    
  }
  
  
  
  
  
}
