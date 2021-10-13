class Particles extends GameObject {
  
  //variables 
  int t; //transparency
  
  PVector explode;
  
  //ArrayList<Particles> myParticles;
  
  Particles(float x, float y) {
    lives = 1;
    size = 8;
    
    t = 255;
    location = new PVector (x, y);
    velocity = new PVector (0, 1);
    velocity.rotate(PI+random(-6, 6)); //180 degree
    velocity.setMag(3);
  
   
  }

  
   
  //Particles(PVector p) {
  //lives = 1;
  //size = 10;
  //t = int(random(200, 255));
  
  //location = p.copy();
  //explode = p.copy();
  
  //location.add(explode);
  //explode.setMag(10);
  //velocity = p.copy(); 
  //velocity.rotate(PI+random(-0.5, 0.5)); //180 degree
  //velocity.setMag(3);
    
    
  //}
  
  void show () {
   noStroke();
   fill(255, t);
   circle(location.x, location.y, size);
   
   println("string");
     
    
  }
  
  void act () {
    super.act();
    t = t - 20;
    if (t <= 0) lives = 0;
    
    
  }
  
  
  
  
  
}
