class Ship extends GameObject {

  //Instance variables
  PVector direction;
  int shotTimer, threshold;
  int immunity;
  int teleport;

  //constructor 
  Ship() {
    lives = 3;
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    direction = new PVector(0, -0.1);
    shotTimer = 0;
    threshold = 60;
    immunity = 1000;
    teleport = 100;
  }

  //behaviour functions
  void show() {
    pushMatrix();
    translate(location.x, location.y);
    rotate(direction.heading());
    noFill();
    strokeWeight(4);
    stroke(#39FF14);
    triangle(-25, -12.5, -25, 12.5, 25, 0);

    popMatrix();

    //rectangle timer 
    fill(#0DFFF1);
    noStroke();
    rect(400, 10, 800, 30);

    fill(#0D16FF);
    rect(400, 10 , 800, 30);

    teleport = teleport + 2;

    if (teleport >= 800) {
    }
  }

  void act() {
    super.act();

    if (velocity.mag() > 2)
      velocity.setMag(2);


    shotTimer++;

    //immunity 
    //int i = 0;
    //while (i < myObjects.size()) {
    //  GameObject obj = myObjects.get(i);
    //  if (immunity <= 0) {
    //    if (obj instanceof Asteroid) {
    //      if (dist(location.x, location.y, obj.location.x, obj.location.y) < 35 + obj.size/2) {
    //        lives = lives - 1;
    //        immunity = 1000;
    //      }
    //    }
    //   i++;
    //  if (immunity >= 0) immunity--;
    //  }
     
    //}
  

//    //teleport
    if (tkey && teleport >= 800) {
      location.x = random(width);
      location.y = random(height);
    }

    //  int i = 0;
    //  GameObject obj = myObjects.get(i);
    //  while (dist(location.x, location.y, obj.location.x, obj.location.y) < obj.size/2 + size/2) {
    //    location.x = random(width);
    //    location.y = random(height);
    //  }
    //}




    //moving using keys
    if (upkey) {
      velocity.add(direction);
      myObjects.add(new Fire());
      myObjects.add(new Fire());
    }
    if (downkey) velocity.sub(direction);
    if (leftkey) direction.rotate(-radians(5));
    if (rightkey) direction.rotate(radians(5));
    if (spacekey && shotTimer >= threshold) {
      myObjects.add(new Bullet());
      shotTimer = 0;
    }
  }
}
