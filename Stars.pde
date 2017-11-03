Stars[] Sky = new Stars[300];
class Stars //note that this class does NOT extend Floater
{
  private int myX,myY;
  Stars()
  {
    myX = ((int)(Math.random()*300));
    myY = ((int)(Math.random()*300));
  }
  void show()
  {
    noStroke();
    fill(255);
    ellipse(myX,myY,2,2);
  }
  
}