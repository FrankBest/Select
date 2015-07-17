//select sort
int [] i=new int [20];
int b,c,d,e,f;

void setup ()
{
  frameRate (24);
  for (int a=0;a<20;a++)
  {
    i[a]=int (random (1,101));
  }  
  size (400,500);
}  

void draw ()
{
  if (b<19)
  {
    background (255);
    if (c==19)
    {
      e=i[d];
      i[d]=i[b];
      i[b]=e;
      b=b+1;
      c=b;
      d=b;
    }
    if (c<19)
    {
      c=c+1;
    }  
    if (i[d]>i[c])
    {
      d=c;
    }  
    for (int a=0;a<20;a++)
    {
      if (a<b)
      {
        fill (127,127,255);
      }  
      else if (a==d)
      {
        fill (127,255,127);
      }  
      else if (a==c)
      {
        fill (255,127,127);
      }
      else 
      {
        fill (255,255,127);
      }  
      rect (a*20,500-5*i[a],20,5*i[a]);
      fill (0);
      text (i[a],a*20,500);
    }  
  }
  else if (b==19)
  {
    for (int a=0;a<20;a++)
    {
      fill (127,127,255); 
      rect (a*20,500-5*i[a],20,5*i[a]);
      fill (0);
      text (i[a],a*20,500);
    }
  } 
}  
