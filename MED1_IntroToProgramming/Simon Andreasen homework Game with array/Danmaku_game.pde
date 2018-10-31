/* Danmaku game Simon Bredahl Andreasen 23/10 2018
 Modification of existing code by Len Pelletier */
color lightblue = #67D4FF;
color darkblue = #2f6A96;
color orange = #EE7036;
color darkorange = #AA5012;

Player myPlayer;
ArrayList<GameObject> engine; //ArrayList size is changeable
boolean Firing, Focus, moveleft, moveright, moveup, movedown = false;


void setup() {
  size(600, 680, FX2D);
  engine = new ArrayList<GameObject>(10000); //Value in parentese detremenen capacity (how much memeory is resserved)
  rectMode(CENTER);
  //Able to call upon player in other classes
  myPlayer = new Player();
  engine.add(myPlayer);
  engine.add(new Launcher());
  noStroke();
}

void draw() {
  background(0);

  //starts with the end of the arraylist
  int  i = engine.size()-1;
  while (i >= 0) {
    GameObject obj = engine.get(i);
    obj.show();
    obj.act();
    if (obj.hasDied()) {
      engine.remove(i);
    }
    i--;
  }

  engine.add(new Star());
}

void keyPressed() {
if ( key == 'z' || key == 'Z') {
    Firing = true;
  } else if ( key ==  CODED && keyCode == SHIFT) {
    Focus = true;
  } else if ( key == CODED && keyCode == LEFT) {
    moveleft = true;
  } else if ( key == CODED && keyCode == RIGHT) {
    moveright = true;
  } else if ( key == CODED && keyCode == UP) {
    moveup = true;
  } else if ( key == CODED && keyCode == DOWN) {
    movedown = true;
  }
}

void keyReleased() {
  if ( key == 'z' || key == 'Z') {
    Firing = false;
  } else if ( key ==  CODED && keyCode == SHIFT) {
    Focus = false;
  } else if ( key == CODED && keyCode == LEFT) {
    moveleft = false;
  } else if ( key == CODED && keyCode == RIGHT) {
    moveright = false;
  } else if ( key == CODED && keyCode == UP) {
    moveup = false;
  } else if ( key == CODED && keyCode == DOWN) {
    movedown = false;
  }
}
