ArrayList <Asteroid> space = new ArrayList<Asteroid>();
 Spaceship S= new Spaceship();
 Stars[] Sky = new Stars[300];
public void setup() 
{
  
 size(300,300);
 for(int i = 0; i <Sky.length; i++)
    {
      Sky[i] = new Stars();  
  }
  for(int bi = 0; bi <20; bi++)
    {
      space.add(new Asteroid());  
  }
}
public void draw() 
{
  background(0);
  for(int i =0; i<Sky.length; i++)
    {
      Sky[i].show();
    }
    for(int bi = 0; bi <space.size(); bi++)
    {
      space.get(bi).show();
      space.get(bi).move();
  }
  S.show();
  S.move();  
  for(int b=0; b<space.size(); b++)
  {
    if(dist(S.getX(),S.getY(),space.get(b).getX(),space.get(b).getY())<10)
    space.remove(b);
  }
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