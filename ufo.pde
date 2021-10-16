class UFO extends GameObject {
  
  //Instance variables
  PVector direction;
  int shotTimer, threshold;
  float vx;
  float vy;
  
  
 

  //constructor 
    UFO () {
    lives = 1;
    location = new PVector(width/2, height/2);
    velocity = new PVector(random(0,3), random(0,3));
    //velocity = new PVector(-1, 0);
    velocity.rotate(random(0, TWO_PI));
    direction = new PVector(0, -0.1);
    shotTimer = 0;
    threshold = 60;
    size = 50;
    vx = myShip.location.x - location.x;
    vy = myShip.location.y - location.y;

  }
  

  //behaviour functions
  void show() {
    pushMatrix();
    translate(location.x, location.y);
    rotate(direction.heading());
    fill(#39FF14);
    noStroke();
    circle(0, 0, size);
    popMatrix();
  }

 
  void act() {
    super.act();
    shotTimer++;
    
        if (shotTimer >= threshold) {
    myObjects.add(new UFOBullets(location.x, location.y, vx, vy));
      shotTimer = 0;
        }


 
  }




 


  
  
}

    
    
  
  
  
 
  
  


 
  
