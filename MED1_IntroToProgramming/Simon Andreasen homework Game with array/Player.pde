class Player extends GameObject {

  Gun myGun;

  Player() {
    x = width/2;
    y = height/1.25;
    dx = 0;
    dy = 0;
    w = 25;
    h = 25;
    myGun = new SpreadGun();
  }

  void show() {
    fill(lightblue);
    rect(x, y, w, h);
  }
  void act() {
    dx = 0;
    dy = 0;
//if (myGun.BulletType == 1) myGun = new SpreadGun();
//if (myGun.BulletType == 2) myGun = new LaserGun();

    if (moveup )   dy   -= (playerSpeed = moveSpeed); myGun.BulletType = 1;
    if (moveleft)  dx   -= (playerSpeed = moveSpeed); myGun.BulletType = 1;
    if (movedown)  dy   += (playerSpeed = moveSpeed); myGun.BulletType = 1;
    if (moveright) dx   += (playerSpeed = moveSpeed); myGun.BulletType = 1;
    if (Firing) myGun.shoot();

    if (moveup && Focus)    dy   -= (focusSpeed - playerSpeed - 1); myGun.BulletType = 2; println(myGun.BulletType);
    if (moveleft && Focus)  dx   -= (focusSpeed - playerSpeed); myGun.BulletType = 2;
    if (movedown && Focus)  dy   += (focusSpeed - playerSpeed - 1); myGun.BulletType = 2;
    if (moveright && Focus) dx   += (focusSpeed - playerSpeed); myGun.BulletType = 2;

    x += dx;
    y += dy;
    myGun.recharge();
  }

  boolean hasDied() {
    return false;
  }
}
