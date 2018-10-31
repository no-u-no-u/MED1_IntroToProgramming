class Star extends GameObject //acuire all the data of the extended class. int, floats, methods
{
  //Star is created
  Star() {
    x = random(0, width);
    y = 0;
    dx = 0;
    dy = random(3, 5);
  }
  //override existing methods
  void show() {
    fill(255);
    rect(x, y, dy, dy);
  }

  void act() {
    x = x + dx;
    y = y + dy;
  }

  boolean hasDied() {
    return y > height; //removes stars once their hit bottom of screen.
  }
}
