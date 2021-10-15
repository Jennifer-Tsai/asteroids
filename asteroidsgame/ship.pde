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
    immunity = 300;
    teleport = 100;
    size = 50;
  }

  //behaviour functions
  void show() {
    pushMatrix();
    translate(location.x, location.y);
    rotate(direction.heading());
    noFill();
    strokeWeight(4);
    stroke(#39FF14);
     if (immunity > 0) {
      immunity--;
      fill(#EAE3E3);
      strokeWeight(4);
      stroke(255);  
    } 
    triangle(-25, -12.5, -25, 12.5, 25, 0);
    popMatrix();

    teleport = teleport + 2;

    if (teleport >= 400) {
      fill(#F70CD9);
      noStroke();
      rect(400, 10, 400, 30);

      teleport = teleport + 2;
    }
  }

  void act() {
    super.act();

    if (velocity.mag() > 2)
      velocity.setMag(2);

    shotTimer++;




    println(lives, immunity);

    // immunity 
    int i = 0;
    while (i < myObjects.size()) {
      GameObject obj = myObjects.get(i);
      if (immunity <= 0) {
        if (obj instanceof Asteroid) {
          if (dist(location.x, location.y, obj.location.x, obj.location.y) < 35 + obj.size/2) {
            lives = lives - 1;
            immunity = 300;
          
          }
        }
      }
      i++;
    }

    if (lives == 0) {
      mode = GAMEOVER;
    }

    //immunity 
    fill(255);
    strokeWeight(3);
    textSize(30);
    text("Immunity" + immunity, 120, 550);


    //teleport
    if (tkey && teleport >= 400) {
      teleport = 0;
      location.x = random(0, width);
      location.y = random(0, height);
    }

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
