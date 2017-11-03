 Spaceship S= new Spaceship();
public void setup() 
{
  
 size(300,300);
 for(int i = 0; i <Sky.length; i++)
    {
      Sky[i] = new Stars();  
  }
}
public void draw() 
{
  background(0);
  for(int i =0; i<Sky.length; i++)
    {
      Sky[i].show();
    }
  S.show();
  S.move();  
}
public void keyPressed()
{
  if(key == 'a')//turn left
  {
    S.turn(-5);
  }
  if(key == 'd')//turn right
  {
    S.turn(5);
  }
  if(key == 'w')//accelerate
  {
    S.accelerate(.1);
  }
  if(key == 's')
  {
    S.setY((int)(Math.random()*300));
    S.setX((int)(Math.random()*300));
    S.setDirectionY(0);
    S.setDirectionX(0);
  }
}