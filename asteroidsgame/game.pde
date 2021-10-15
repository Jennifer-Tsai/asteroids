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

  //rectangle timer 
  rectMode(CORNER);
  fill(#0DFFF1);
  noStroke();
  rect(400, 10, 400, 30);

  fill(#0D16FF);
  rect(400, 10, teleport, 30);

  teleport = teleport + 2;

  if (teleport >= 400) {
    fill(#F70CD9);
    noStroke();
    rect(400, 10, 400, 30);

    teleport = teleport + 2;
  }

  if (tkey && teleport >= 400) {
    teleport = 0;
  }

  //score
  fill(255);
  text("Score: " + score, 680, 550);

  if (score == 2) {
    mode = GAMEOVER;
    fill(255);
    textSize(80);
    text("YOU WIN", 400, 300);
  }
}

void gameClicks() {
  if (dist(mouseX, mouseY, 100, 100) < 50) {
    mode = PAUSE;
    stroke(255);
    resetCircle();
    fill(60);
    fill(0);
    noStroke();
    triangle(85, 70, 130, 100, 85, 135);
  }
}
