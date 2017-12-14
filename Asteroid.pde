class Asteroid extends Floater
{
  private int rotSpeed=((int)(Math.random()*5));
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public void setX(int x){myCenterX=x;}  
   public int getX(){return (int)myCenterX;}   
   public void setY(int y){myCenterY=y;}   
   public int getY(){return (int)myCenterY;}   
   public void setDirectionX(double x){myDirectionX=x;}
   public double getDirectionX(){return myDirectionX;}   
   public void setDirectionY(double y){myDirectionY=y;}   
   public double getDirectionY(){return myDirectionY;}  
   public void setPointDirection(int degrees){myPointDirection=degrees;}   
   public double getPointDirection(){return myPointDirection;} 
 public Asteroid(){
   
    
   corners=9;
   xCorners=new int[corners];
   yCorners=new int[corners];
   
   myColor=192;
   xCorners[0]=5;
yCorners[0]=1;
xCorners[1]=2;
yCorners[1]=0;
xCorners[2]=1;
yCorners[2]=4;
xCorners[3]=-2;
yCorners[3]=4;
xCorners[4]=-4;
yCorners[4]=1;
xCorners[5]=-1;
yCorners[5]=-3;
xCorners[6]=1;
yCorners[6]=-2;
xCorners[7]=3;
yCorners[7]=-3;
xCorners[8]=5;
yCorners[8]=1;

   myCenterX=((int)(Math.random()*500));
   myCenterY=((int)(Math.random()*500));
   myDirectionX=((Math.random()*2)-1);
   myDirectionY=((Math.random()*2)-1);
    }
 

}