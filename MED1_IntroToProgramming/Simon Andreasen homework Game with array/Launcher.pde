class Launcher extends GameObject {
 float angle;
  Launcher() {
    x = width/2;
    y = -100;
    dx = 0;
    dy = 0;
  }

  void show() {
    fill(100);
    //ellipse (x, y, 100, 100);
  }
  //control waves of enemies
  void act() {
    if (frameCount < 100) {
      //first 100 frames, do nothing
    } else if (frameCount < 600) {
      Scurve();
    } else if (frameCount < 1200) {
     doubleLine(400);
    } else if (frameCount < 1500) {
      gunshipline(width/2);
    } else if (frameCount < 1800) {
      randomWave();
    }
  }
  void Scurve() {
    x = sin(angle)*width/2 + width/2;
    angle = angle + PI/90;
    if (frameCount % 10 == 0) { //takes framecount and divide by 10, return the remainder (modulus)
      engine.add(new SmallEnemy(x, y));
    }
  }

  void doubleLine(float incommingX) {
    x = incommingX;
    if (frameCount % 50 == 0) { //takes framecount and divide by 10, return the remainder (modulus)
      engine.add(new Enemy(x, y));
      engine.add(new Enemy(x-(x/2), y));
    }
  }

  void gunshipline(float incommingX) {
    x = incommingX;
    if (frameCount % 50 == 0) { //takes framecount and divide by 10, return the remainder (modulus)
      engine.add(new GunShipEnemy(x, y));
    }
  }

  void randomWave() {
    x = random(50, width-50);
    if (frameCount % 50==0) {
      engine.add(new FastEnemy(x, y));
    }
  }

  boolean hasDied() {
    return false;
  }
}
