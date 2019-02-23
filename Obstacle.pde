class Obstacle{
  PVector loc;
  int speed;
  int d;
   
  Obstacle(){
    loc = new PVector();
    loc.x = random(width);
    loc.y=random(-height,0);
    d=10;
    speed=1;
  }
  void update(){
    loc.y += speed;  
    if (loc.y > height){
      loc.y=random(-100,0);
      loc.x=random(width);
    }
  }
  void increaseSpeed(){
    speed+=1;
  }
  void display(){
    fill(255,0, 0);
    ellipse(loc.x, loc.y, d,d);
  }
}