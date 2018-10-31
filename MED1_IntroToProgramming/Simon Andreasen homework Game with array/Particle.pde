class Particle extends GameObject {

  Particle(float incommingX, float incommingY) {
    x = incommingX;
    y = incommingY;
    dx = random(-5, 5);
    dy = random(-5, 5);
    w = 5;
    h = 5;
    hp= random(100,255);
  }

  void show() {
    fill(orange, hp);
    rect(x, y, w, h);
  }
  void act() {
    x += dx;
    y += dy;
    hp -= 2;
  }
  boolean hasDied() {
    return hp <= 0;
  }
}
