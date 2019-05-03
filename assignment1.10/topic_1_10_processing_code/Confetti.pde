class Confetti {
  PVector position;
  PVector movespeed;
  color c;        // a confetti has a colour
  float radius;    // a confetti has a radius;

  int id;         // a confetti knows here its number

  Confetti(int j) {  //constructor: gives values to the variables
    c= color(int(random(0, 255)), int(random(0, 255)), int(random(0, 255)));  //pinkish
    position= new PVector(random(radius, width-radius), random(radius, height-radius));
    movespeed = new PVector((random(-3, 4)), (random(-3, 4)));
    radius=random(10, 25);




    while (movespeed.x==0) movespeed.x=int(random(-3, 4)); // dont want nonmoving confettis
    
    while (movespeed.y==0) movespeed.y=int(random(-3, 4)); // dont want nonmoving confettis

    id=j;
  }

  void draw_confetti() {
    //noStroke();
    fill(c);
    ellipse(position.x, position.y, 2*radius, 2*radius);
  }

  void move_confetti() {
    //if the confetti reaches the left wall or the right wall, it bounces
    position.add(movespeed);
    if ((position.x>width-radius-movespeed.x) || (position.x<radius-movespeed.x))
    movespeed.x=-movespeed.x;
    position.x=position.x+movespeed.x;
    //if the confetti reaches the top wall or the botton wall, it bounces
    if ((position.y>height-radius-movespeed.y) || (position.y<radius-movespeed.y)) 
    movespeed.y=-movespeed.y;
    position.y=position.y+movespeed.y;
  }

  void collide() {
    // compare each confetti with all confettis having a higher index
    // where the actual highest index is i
    for (int j = id + 1; j < i; j++) {
      float distx = confs[j].position.x+confs[j].movespeed.x - position.x-movespeed.x;
      float disty = confs[j].position.y+confs[j].movespeed.y - position.y-movespeed.y;
      float distance = sqrt(distx*distx + disty*disty);
      float minDist = confs[j].radius + radius;

      if (distance < minDist) {    // physics of collission
        float angle = atan2(disty, distx);
        float sine = sin(angle);
        float cosine = cos(angle); 

        float temp1x = cosine * distx + sine * disty;
        float temp1y = cosine * disty - sine * distx;

        float ax = cosine * movespeed.x + sine * movespeed.y;
        float ay = cosine * movespeed.y - sine * movespeed.x;

        movespeed.x = ax;                   // change of the movement vector of the calling object
        movespeed.y = ay;

        ax = cosine * confs[j].movespeed.x + sine * confs[j].movespeed.y;
        ay = cosine * confs[j].movespeed.y - sine * confs[j].movespeed.x;

        confs[j].movespeed.x = ax;          // change of the movement vector of the other object 
        confs[j].movespeed.y = ay;
      }
    }
  }
}
