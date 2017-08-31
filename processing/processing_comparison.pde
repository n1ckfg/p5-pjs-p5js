int numBalls = 500;
Ball[] ball = new Ball[numBalls];
color bgColor = color(127,127,0);

void setup() {
  size(640,200);
  for (int i=0; i<numBalls; i++) {
    ball[i] = new Ball();
  }
  background(bgColor);
}

void draw() {
  noStroke();
  fill(bgColor,20);
  rect(0,0,width,height);
  for (int i=0; i<numBalls; i++) {
    ball[i].run();
  }
}

class Ball {
  
  PVector p;
  float spread;
  float size;
  
  Ball() {
    p = new PVector(random(width), random(height));
    spread = random(5);
    size = random(50);
  }
  
  void update() {
    p.x += random(spread) - random(spread);
    p.y += random(spread) - random(spread);
  }
  
  void draw() {
    noStroke();
    fill(200+random(50),0,0,150);
    ellipse(p.x,p.y,size,size);
    fill(255, random(255),0);
    ellipse(p.x,p.y,2,2);
  }
  
  void run() {
    update();
    draw();
  }
  
}
