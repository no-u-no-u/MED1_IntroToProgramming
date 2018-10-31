

class SpreadGun extends Gun {
  SpreadGun() {
    threshold = 5;
    cooldown = 0;
  }
  void shoot() {
    if (cooldown == threshold) {
      int x = 6;
      int y= 15;
      //Sides
      engine.add(new Bullet(myPlayer.dx+x, -y, myPlayer.x+30, myPlayer.y));
      engine.add(new Bullet(myPlayer.dx-x, -y, myPlayer.x+30, myPlayer.y));
      engine.add(new Bullet(myPlayer.dx+x, -y, myPlayer.x-30, myPlayer.y));
      engine.add(new Bullet(myPlayer.dx-x, -y, myPlayer.x-30, myPlayer.y));
      //Middel
      engine.add(new Bullet(myPlayer.dx, -y, myPlayer.x+5, myPlayer.y));
      engine.add(new Bullet(myPlayer.dx, -y, myPlayer.x-5, myPlayer.y));
    }
  }
}

class LaserGun extends Gun {
  LaserGun() {
    threshold = 5;
    cooldown = 0;
    BulletType = 2;
  }

  void shoot() {
    if (cooldown == threshold) {
      engine.add(new Bullet());
;
      cooldown = 0;
    }
  }
}
