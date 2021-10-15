class Asteroid extends GameObject {

  ArrayList<Particles> myParticles;


  Asteroid() {
    lives = 1;
    location = new PVector (random(0, width), random(0, height)); 
    velocity = new PVector (0, 1);
    velocity.rotate(random(0, TWO_PI));
    size = 100;
    myParticles = new ArrayList<Particles>();
  }

  Asteroid(int s, float x, float y) {
    lives = 1;
    location = new PVector (x, y);
    velocity = new PVector (0, 1);
    velocity.rotate(random(0, TWO_PI));
    size = s;
  }

  void show() {
    noFill();
    stroke(#1977F7);
    ellipse(location.x, location.y, size, size);
    
  
  }


  void act() {
    super.act();
   
    
    
    int i = 0;
    while (i <myObjects.size()) {
      GameObject myObj = myObjects.get(i); 
      if (myObj instanceof Bullet) {
        if (dist(location.x, location.y, myObj.location.x, myObj.location.y) <=size/2 + myObj.size) {
          myObj.lives = 0;
          lives = 0;
          //myObjects.add(new Particles(this.location));
          if (size >= 50) {
            myObjects.add(new Asteroid(size/2, location.x, location.y));
            myObjects.add(new Asteroid(size/2, location.x, location.y));
            score = score + 1;
          } else {
            lives = 0;
            myObjects.add(new Particles(location.x, location.y));
            myObjects.add(new Particles(location.x, location.y));
            myObjects.add(new Particles(location.x, location.y));
            myObjects.add(new Particles(location.x, location.y));
            myObjects.add(new Particles(location.x, location.y));
            myObjects.add(new Particles(location.x, location.y));
            myObjects.add(new Particles(location.x, location.y));
            myObjects.add(new Particles(location.x, location.y));
            myObjects.add(new Particles(location.x, location.y));
            myObjects.add(new Particles(location.x, location.y));
            myObjects.add(new Particles(location.x, location.y));
            myObjects.add(new Particles(location.x, location.y));
            myObjects.add(new Particles(location.x, location.y));
            myObjects.add(new Particles(location.x, location.y));
            myObjects.add(new Particles(location.x, location.y));
            myObjects.add(new Particles(location.x, location.y));
            myObjects.add(new Particles(location.x, location.y));
            myObjects.add(new Particles(location.x, location.y));
            myObjects.add(new Particles(location.x, location.y));
            myObjects.add(new Particles(location.x, location.y));
          }
        }
      }  
      i++;
    }
  }
  
  
  
  

}  
