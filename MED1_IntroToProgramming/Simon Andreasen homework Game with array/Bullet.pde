class Bullet extends GameObject {
  float x2;

//Laser
  Bullet() {
    x = myPlayer.x; //current postion of the player class
    y = myPlayer.y;
    dx = 0;
    dy = -90;
    w = 8;
    h = -height;
    hp = 1;
  }
  //SpreadGun
  Bullet(float incomingDX, float incomingDY, float xpos, float ypos) {
    x = xpos; //current postion of the player class
    y = ypos;
    dx = incomingDX;
    dy = incomingDY;
    w = 5;
    h = 5;
    hp = 0.1;
  }

  void show() {
    fill(darkblue);
    rect (x, y, w, h);
  }

  void act() {
    x += dx;
    y += dy;
  }

  boolean hasDied() {
    return y < 0 || hp <= 0;
  }
}
