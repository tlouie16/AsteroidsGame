Spaceship S= new Spaceship();
 Asteroid[] Rock= new Asteroid[20];  
 Stars[] Sky = new Stars[300];
public void setup() 
{
  
 size(300,300);
 for(int i = 0; i <Sky.length; i++)
    {
      Sky[i] = new Stars();  
  }
  for(int i = 0; i <Rock.length; i++)
    {
      Rock[i] = new Asteroid();  
  }
}
public void draw() 
{
  background(0);
  for(int i =0; i<Sky.length; i++)
    {
      Sky[i].show();
    }
    for(int i = 0; i <Rock.length; i++)
    {
      Rock[i].show();  
      Rock[i].move(); 
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