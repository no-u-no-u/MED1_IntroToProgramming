class Flower {

  //variables

  float r;         //radius of the flower petal
  int n_petals;    //number of petals
  float x;         //x-pposition of the center of the flower
  float y;         //y-position of the center of the flower
  int petalColor;  //hexadecimal number for the color of petals

  Flower(float temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_petalColor) {
    r=temp_r;
    n_petals=temp_n_petals;
    x=temp_x;
    y=temp_y;
    petalColor=temp_petalColor;
  }
  void display()
  {
    float ballX;
    float ballY;

    fill(petalColor);
    for (float i=0; i<PI*2; i+=2*PI/n_petals) {

      ballX=x + r*cos(i);
      ballY=y + r*sin(i);
      stroke(#000000);
      ellipse(ballX, ballY, r, r);
    }
    fill(200, 0, 0);
    ellipse(x, y, r*1.2, r*1.2);
    fill(#FF8400);
    noStroke();
    ellipse(x, y, r*0.9, r*0.9);
    fill(200, 200, 0);
    ellipse(x, y, r*0.6, r*0.6);
    fill(#AEA6FC);
    ellipse(x, y, r*0.3, r*0.3);
  }
}
