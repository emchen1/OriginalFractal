int a = 1600;
public void setup()
{
  size(500, 500);
  background(0);
}
public void draw()
{
  fractal(250, 250, 200, a);
}
public void mousePressed()
{
  if(a==1600)
  a=800;
  else if(a==800)
  a=400;
  else if(a == 400)
  a=200;
  else if(a == 200)
  a = 100;
  else if(a==100)
  a=50;
  else
  a = 800;
  

}
public void fractal( int x, int y, int r, int c)
{
  if(c >= 1600)
  ellipse(x, y, r, r);
  else{
    fractal(x+r/2,y, r/2, c*2);
    fractal(x-r/2,y, r/2, c*2);
    fractal(x,y+r/2, r/2, c*2);
    fractal(x,y-r/2, r/2, c*2);
  }
    
}