//Jennifer Tsai
//Oct 4, 2021
//Asteriods Game 

//mode framework
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

//keys
boolean upkey, downkey, leftkey, rightkey, spacekey;

//ship
Ship myShip;

//bullets
ArrayList<GameObject> myObjects;

//gifs
PImage [] gif;
int frame;
int f;

//fonts
PFont asteroids;

void setup() {
 size(800, 600);
 //imageMode(CENTER);
 mode = INTRO;

 
 //ship
 myShip = new Ship();
 
 //bullets
 myObjects = new ArrayList<GameObject>();
 myObjects.add(myShip);
 myObjects.add(new Asteroid());
 myObjects.add(new Asteroid());
 myObjects.add(new Asteroid());
 
 //gif
 frame = 47;
 gif = new PImage[frame];
 int g = 0;
 while (g < frame) {
   gif [g] = loadImage("frame_"+g+"_delay-0.1s.gif");
   g = g+1;
 }
 
 //font
 asteroids = createFont("Asteroid 7337.otf", 80);
}

void draw() {
 background(0); 

  //mode framework 
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error : " + mode);
  }
 
}
  
  


void keyPressed() {
 if (keyCode == UP)  upkey = true; 
 if (keyCode == DOWN) downkey = true;
 if (keyCode == LEFT)  leftkey = true; 
 if (keyCode == RIGHT)  rightkey = true;
 if (key == ' ')  spacekey = true;
}

void keyReleased() {
  if (keyCode == UP)  upkey = false;
  if (keyCode == DOWN)  downkey = false;
  if (keyCode == LEFT)  leftkey = false;
  if (keyCode == RIGHT)  rightkey = false;
  if (key == ' ')  spacekey = false;
}

void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks(); 
  }
}

void rectTactile(int x, int y, int w , int h) {
   if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
   fill(255);
  } else {
  fill(100);
  }
  
}
