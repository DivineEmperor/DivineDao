int d = 900;
int r = 0;
int x = 450;
int y = 450;

void setup()
{
  size(900,900);
  

}

void draw(){

  background(0);
  pushMatrix();
  translate(x,y);
  rotate(radians(r));
  fill(255,0,0);
  ellipse(0,0,100,100);
  fill(0,0,255);
  ellipse(200,0,20,20);
  translate(200,0);
  fill(255);
  rotate(radians(r));
  ellipse(30,0,5,5);
  popMatrix();
  

   
   r+=1;
   println(" r :"+r);
  

}
