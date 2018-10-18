Flower myFlower1;
int r1=int(random(50, 80));      //random size of flowers (petals+middle) 
int a_petals=int(random(6, 17));  //random number of petals (6-17)
float x1=random(0, 900);        //random x-value starting point
float y1=random(0, 600);         //random y-value starting point
float axdir=random(1, 2);        //random speed 
float aydir=random(1, 2);

Flower myFlower2;
int r2=int(random(50, 80));
int b_petals=int(random(6, 17));
float x2=random(0, 900);
float y2=random(0, 600);
float bxdir=random(2, 3);
float bydir=random(2, 3);

Flower myFlower3;
int r3=int(random(50, 80));
int c_petals=int(random(6, 17));
float x3=random(0, 900);
float y3=random(0, 600);
float cxdir=random(3, 4);
float cydir=random(3, 4);
int Petalc;
int Petalc2;
int Petalc3;
void setup() {
  size(900, 600);
}

void draw() {
  background(#43AF76);
  float ran1 = random(255);
  float ran2 =random(255);
  float ran3 = random(255);
  //calling flower class and displaying
  myFlower1 = new Flower(r1, a_petals, x1, y1, Petalc);
  myFlower2 = new Flower(r2, b_petals, x2, y2, Petalc2);
  myFlower3 = new Flower(r3, c_petals, x3, y3, Petalc3);

  myFlower1.display();
  myFlower2.display();
  myFlower3.display();


  // changing flowers position

  x1=x1+axdir;
  y1=y1+aydir;

  x2=x2+bxdir;
  y2=y2+bydir;

  x3=x3+cxdir;
  y3=y3+cydir;

  // changing flowers direction when they hit the walls and add speed  
  if (x1>width) {
    axdir*=-1;
    x1+=1;
    y1+=1;
    Petalc=color(ran1, ran2, ran3);
  }
  if (x1<0) {
    axdir*=-1;
    x1+=1;
    y1+=1;
    Petalc=color(ran1, ran2, ran3);
  }
  if (y1>height) {
    aydir*=-1;
    x1+=1;
    y1+=1;
    Petalc=color(ran1, ran2, ran3);
  }
  if (y1<0) {
    aydir*=-1;
    x1+=1;
    y1+=1;
    Petalc=color(ran1, ran2, ran3);
  }

  if (x2>width) {
    bxdir *= -1;
    x2+=1;
    y2+=1;
    Petalc2=color(ran1, ran2, ran3);
  }
  if (x2<0) {
    bxdir *= -1;
    x2+=1;
    y2+=1;
    Petalc2=color(ran1, ran2, ran3);
  }
  if (y2>height) {
    bydir *=-1;
    x2+=1;
    y2+=1;
    Petalc2=color(ran1, ran2, ran3);
  }
  if (y2<0) {
    bydir *= -1;
    x2+=1;
    y2+=1;
    Petalc2=color(ran1, ran2, ran3);
  }
  if (x3>width) {
    cxdir *= -1;
    x3+=1;
    y3+=1;
    Petalc3=color(ran1, ran2, ran3);
  }
  if (x3<0) {
    cxdir *= -1;
    x3+=1;
    y3+=1;
    Petalc3=color(ran1, ran2, ran3);
  }
  if (y3>height) {
    cydir *= -1;
    x3+=1;
    y3+=1;
    Petalc3=color(ran1, ran2, ran3);
  }
  if (y3<0) {
    cydir *= -1;
    x3+=1;
    y3+=1;
    Petalc3=color(ran1, ran2, ran3);
  }
}
