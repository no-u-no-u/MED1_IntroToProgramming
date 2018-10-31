abstract class Gun {
  float cooldown, threshold;
  int BulletType;


  Gun() {
  }

  void shoot() {
    if (cooldown == threshold) {
      engine.add(new Bullet());
      cooldown = 0;
    }
  }

  void recharge() {
    if (cooldown < threshold) {
      cooldown++;
    }
  }
}
