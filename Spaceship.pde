class Spaceship extends Floater  
{   
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
 public Spaceship(){
   
    
   corners=11;
   xCorners=new int[corners];
   yCorners=new int[corners];
   myColor= color(84,187,255);
   xCorners[0]=19;
yCorners[0]=0;
xCorners[1]=-6;
yCorners[1]=-14;
xCorners[2]=-6;
yCorners[2]=-9;
xCorners[3]=-11;
yCorners[3]=-9;
xCorners[4]=-11;
yCorners[4]=-18;
xCorners[5]=-16;
yCorners[5]=-18;
xCorners[6]=-16;
yCorners[6]=18;
xCorners[7]=-11;
yCorners[7]=18;
xCorners[8]=-11;
yCorners[8]=9;
xCorners[9]=-6;
yCorners[9]=9;
xCorners[10]=-6;
yCorners[10]=14;
   myCenterX=250;
   myCenterY=250;
   myDirectionX=0;
   myDirectionY=0;
    }
 
}