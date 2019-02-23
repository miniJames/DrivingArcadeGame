GameEnvironment g;

void setup() {
  ellipseMode(CENTER)  ;
  size(300,600);
  g= new GameEnvironment();
}

void draw() {

  background(0);
  g.update();
  g.display();
  fill(255);
  text("LEVEL: " + g.level,10,10);
  text("SCORE:" + g.getScore(), 10,20);
  text("HIGH SCORE:" + g.highScore,10,30);
  

}

void keyPressed() {
  g.keyInput();
}

void keyReleased(){
 g.keyUp(); 
}