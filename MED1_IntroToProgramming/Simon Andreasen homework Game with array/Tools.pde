/* 
 RECT/RECT COLLISION FUNCTION
 Jeff Thompson // v0.9 // November 2011 // www.jeffreythompson.org
 Takes 8 arguments:
 + x,y position of object 1 - in this case "you"
 + width and height of object 1 - also "you"
 + x,y position of object 2 - in this case the static rectangle
 + width and height of object 2
 first 4 floats are x, y, w, h of one rect. last 4 are x, y, w, h of second rect
 */
 
boolean rectRect(float r1x, float r1y, float r1w, float r1h, float r2x, float r2y, float r2w, float r2h) {

  // test for collision
  if (r1x + r1w/2 >= r2x - r2w/2 &&   //r1 right edge past r2 left
      r1x - r1w/2 <= r2x + r2w/2 &&   //r1 left edge past r2 right
      r1y + r1h/2 >= r2y - r2h/2 &&   //r1 top edge past r2 bottom
      r1y - r1h/2 <= r2y + r2h/2) {   //r1 bottom edge past r2 top
    return true;    // if a hit, return true
  } else {            // if not, return false
    return false;
  }
}
