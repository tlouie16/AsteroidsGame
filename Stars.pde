class Stars //note that this class does NOT extend Floater
{
  private int myX,myY;
  Stars()
  {
    myX = ((int)(Math.random()*500));
    myY = ((int)(Math.random()*500));
  }
  void show()
  {
    noStroke();
    fill(251,255,100);
    ellipse(myX,myY,2,2);
  }
  
}