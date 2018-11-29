/* Spiral will random thickness and blue color
 Simon Bredahl Andreasen 15/11 2018 */
//initiate public variables
float r = 25;
float theta = 0;
float thicc=0;
float oldLow = 0;
float oldHigh = 255;
float newLow = 1000;
float newHigh = 2000;

void setup() {
  //Create size and background color
  fullScreen();
  background(0);
}

void draw() {
  //The for loop is used to draw the spiral quickly
  for (int i = 0; i < 5; i++) {
    float x = r * theta/100 * cos(theta);
    float y = r * theta/100 * sin(theta);
    float value = random(0, 255);
    //re-maps a number from one range to another. "value" dictate postion on the two ranges.
    float m = map(value, oldLow, oldHigh, newLow, newHigh);
    //Create perlin noise out of map value (m). Slowly increase the range by increasing the value of "thicc"
    float n = noise(m) * thicc;
    thicc = thicc +0.009;
    //   println(n);

    noStroke();
    //"value" dictate the blue color and visibility of the ellipse 
    fill(0, 0, value,value);
    rectMode(CENTER);
    //n dictates thickeness of the ellipse.
    ellipse(x+width/2, y+height/2, n, n);

    //theta shows how far the ellipse move each frame, on the x and y coordinate.
    theta += 0.06;
    r += 0.05;
  }
}
