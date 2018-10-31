abstract class GameObject { //diffrent types of gameobejct,s such as player, enimies, bullets.
  //Commen attributies between all objects
  float x, y, dx, dy, w, h, hp; //x, y postion. x, y speed/direction
  float playerSpeed;
  float moveSpeed = 7;
  float focusSpeed = moveSpeed/2;

  GameObject() {
  }
  void show() //what is displayed 
  {
  }
  void act() //movement, shooting...
  {
  }

  boolean hasDied() {
    return false;
  }
}
