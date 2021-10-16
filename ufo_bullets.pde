class UFOBullets extends GameObject {
  
  //variables 
  //float x;
  //float y; 
  //float vx;
  //float vy;
  
  int shotTimer;
  
  PVector x;
  PVector y; 
  
  
  UFOBullets(float x, float y, float vx, float vy) {
    shotTimer = 60;
    lives = 1;
    location = new PVector(x, y);
    velocity = new PVector(myShip.location.x - location.x, myShip.location.y - location.y);
    velocity.setMag(10);
    size = 10;
   
    
  }
  

  
  void show() {
    fill(#FF2929);
    noStroke();
    ellipse(location.x, location.y, size, size);
    
    
    
  }
  
  
  void act() {
     //super.act();
     location.add(velocity);
    shotTimer--;
    if (shotTimer == 0) {
      lives = 0;
      
    }
    
   
    
    
    
    
  } 
  
  
  
  
  
}   
