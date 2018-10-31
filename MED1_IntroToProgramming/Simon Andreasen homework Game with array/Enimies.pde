class Enemy extends GameObject {

  Enemy(float incomingX, float incomingY) {
    x = incomingX;
    y = incomingY;
    dx = 0;
    dy = 3;
    w = 50;
    h = 50;
    hp = 40;
  }

  void show() {
    fill(orange);
    rect(x, y, w, h);
  }

  void act() {
    x += dx;
    y += dy;

    checkCollisions();
  }

  void checkCollisions() {
    //run trough while loop of engine size, checking for bullets and collison
    int i = 0;
    while (i < engine.size()) {
      //"thing" temp name to reffer to in code
      GameObject thing = engine.get(i);
      if (thing instanceof Bullet) { // <object> instanceof <class> if <object> == <class> returns true
        if (rectRect(x, y, 50, 50, thing.x, thing.y, 5, 5)) {
          hp -= 1;
          thing.hp = 0;
          for (int j = 0; j < 5; j++) {
            engine.add(new Particle(thing.x, thing.y));
          }
        }
      }
      i++;
    }
  }

  boolean hasDied() {
    return y > height || hp <= 0;
  }
}

class FastEnemy extends Enemy {

  FastEnemy(float incomingX, float incomingY) {
    super(incomingX, incomingY); //Refer back to extended class (enemy class)
    dy = 10;
  }
}

class GunShipEnemy extends Enemy {
  GunShipEnemy(float incomingX, float incomingY) {
    super(incomingX, incomingY);
    dy = 10;
    w = 75;
    h = 75;
    hp = 40;
  }

  void show() {
    fill(darkorange);
    rect(x, y, w, h);
  }

  void act() {
    if (y < height/2) {
      x += dx;
      y += dy;
    }
    checkCollisions();
  }
}

class SmallEnemy extends Enemy {

  SmallEnemy(float incomingX, float incomingY) {
super(incomingX, incomingY);
    dx = 0;
    dy = 5;
    w = 25;
    h = 25;
    hp = 15;
  }

  void show() {
    fill(orange);
    rect(x, y, w, h);
  }

  void act() {
    x += dx;
    y += dy;

    checkCollisions();
  }
}
