void intro() {
  background(0);
  
  //gif
  image(gif[f], 0, 0, width, height);
  if (frameCount % 5 == 0) f = f + 1;
  if (f == frame) f = 0;
  
  //game title
  textSize(80);
  textAlign(CENTER, CENTER);
  textFont(asteroids);
  fill(#6EFF31);
  text("ASTEROIDS", 400, 200);
  
  //start button
  fill(255);
  rectTactile(300, 350, 200, 100);
  strokeWeight(3);
  rect(300, 350, 200, 100);
  
  fill(0);
  textFont(createFont("Arial", 50));
  textSize(50);
  text("Start", 395, 390);
  
  
}

void introClicks() {
  //start button
  if (mouseX > 300 && mouseX < 500 && mouseY > 350 && mouseY < 450) {
    mode = GAME;
  }
  
  
}
