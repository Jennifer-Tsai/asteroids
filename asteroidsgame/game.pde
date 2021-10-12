void game() {
  background(0);

//pause button 
  fill(60);
  stroke(255);
  strokeWeight(5);
  circle(100, 100, 100);
  stroke(0);
  line(115, 80, 115, 125);
  line(85, 80, 85, 125);
  
  //bullets
  int i = 0;
  while (i < myObjects.size()) {
    GameObject myObj = myObjects.get(i);
    myObj.show();
    myObj.act();

    if (myObj.lives == 0) {
      myObjects.remove(i);
    } else {
      i++;
    }
  }

  
}

void gameClicks() {
  if (dist(mouseX, mouseY, 100, 100) < 50) {
    mode = PAUSE;
    resetCircle();
    fill(60);
    fill(0);
    noStroke();
    triangle(85, 70, 130, 100, 85, 135);
  }
}
