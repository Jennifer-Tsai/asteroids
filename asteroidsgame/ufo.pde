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
    velocity = new PVector(0, 1);
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
    strokeWeight(4);
    fill(#39FF14);
    circle(0, 0, size);
    popMatrix();
  }

 
  void act() {
    super.act();

  //  if (velocity.mag() > 2)
  //    velocity.setMag(2);

  //  shotTimer++;
  //  if (immunity > 0) immunity--;
  //  println(lives, immunity);

  //  // immunity 
  //  int i = 0;
  //  while (i < myObjects.size()) {
  //    GameObject obj = myObjects.get(i);
  //    if (immunity <= 0) {
  //      if (obj instanceof Asteroid) {
  //        if (dist(location.x, location.y, obj.location.x, obj.location.y) < 35 + obj.size/2) {
  //          lives = lives - 1;
  //          immunity = 60;
  //        }
  //      }
  //    }
  //    i++;
  //  }

  // if (lives == 0) {
  //   mode = GAMEOVER;
  // }
  }




  //  //int i = 0;
  //  //GameObject obj = myObjects.get(i);
  //  //while (dist(location.x, location.y, obj.location.x, obj.location.y) < obj.size/2 + size/2) {
  //  //  location.x = random(width);
  //  //  location.y = random(height);
  //  //}



  
  
}

    
    
  
  
  
 
  
  


 
  
