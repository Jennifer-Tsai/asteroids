class UFO extends GameObject {

  //Instance variables
  PVector direction;
  int shotTimer, threshold, timer;
  float vx;
  float vy;
 
 


  //constructor 
  UFO () {
    lives = 1;
    location = new PVector(width/2, height/2);
    velocity = new PVector(random(0, 3), random(0, 3));
    velocity = new PVector(-1, 1);
    velocity.rotate(random(0, TWO_PI));
    direction = new PVector(0, -0.1);
    shotTimer = 0;
    threshold = 300;
    timer = 200;
    size = 50;
    vx = myShip.location.x - location.x;
    vy = myShip.location.y - location.y;
  }
  
  UFO (int UFOlives) {
    UFOlives = 3;
    
    if (UFOlives == 0) {
     mode = GAMEOVER;
    }
    
    
  }


  //behaviour functions
  void show() {
    pushMatrix();
    translate(location.x, location.y);
    rotate(direction.heading());
    fill(#BA02E0);
    noStroke();
    circle(0, 0, size);
    popMatrix();
  }


  void act() {
    super.act();
    shotTimer++;
    
    int b = 0;
    while (b < myObjects.size()) {
      GameObject objb = myObjects.get(b);
      if (objb instanceof Bullet) {
        if (dist(location.x, location.y, objb.location.x, objb.location.y) <= size/2 + objb.size) {
          objb.lives = 0;
          UFOlives = UFOlives - 1;
          
        }
        
      }
      b++;
    }
    
   
  

    if (shotTimer >= threshold) {
      myObjects.add(new UFOBullets(location.x, location.y, vx, vy));
      shotTimer = 0;
    }
    
    if (timer < 0) {
   
      
    }
    timer = timer - 1;
    
  }
}
