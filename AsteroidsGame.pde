ArrayList <Asteroid> space = new ArrayList<Asteroid>();
ArrayList <Bullet> shoot = new ArrayList<Bullet>();
 Spaceship S= new Spaceship();
 Stars[] Sky = new Stars[400];
public void setup() 
{
  
 size(500,500);
 for(int i = 0; i <Sky.length; i++)
    {
      Sky[i] = new Stars();  
  }
  for(int bi = 0; bi <100; bi++)
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
  for(int t = 0; t <shoot.size(); t++)
    {
      shoot.get(t).show();
      shoot.get(t).move();
  }
  S.show();
  S.move(); 
  for(int b=0; b<space.size(); b++)
  {
    if(dist(S.getX(),S.getY(),space.get(b).getX(),space.get(b).getY())<10)
    space.remove(b);
  }
    for(int bh=0; bh<space.size(); bh++)
    {
      for(int b=0; b<shoot.size(); b++)
      {
      if(dist(space.get(bh).getX(),space.get(bh).getY(),shoot.get(b).getX(),shoot.get(b).getY())<10)
      {
    shoot.remove(b);
    space.remove(bh);
    break;
  }
  /*if(shoot.get(b).getX()<0||shoot.get(b).getY()<0||shoot.get(b).getX()>300||shoot.get(b).getY()>300)
   {
   shoot.remove(b);
   }*/
    }
  } 
  
}
public void keyPressed()
{
  if(key == ' ')//bullet
  {
    shoot.add(new Bullet(S));
  }
  if(key == 't')//Asteroids
  {
    space.add(new Asteroid());
  }
  if(key == 'r')//stop
  {
    S.setDirectionY(0);
    S.setDirectionX(0);
  }
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
    S.setY((int)(Math.random()*500));
    S.setX((int)(Math.random()*500));
    S.setDirectionY(0);
    S.setDirectionX(0);
  }
}