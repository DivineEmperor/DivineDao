class Particle{
  float x, y, oldX,oldY, speed, finalx, targetY, explodeTimer, weight, angle,l;
  int amount, duration;
  boolean start,exp,hide,state_1,state_2,state_3;
  color rColor,oColor;
  Particle(){
    start = false;
    exp = false;
    hide = true;
    state_1 =((start)&&(!exp)&&(!hide));
    state_2 = ((!start)&&(exp)&&(!hide));
    state_3 = ( (!start)&&(!exp)&&(hide));
  }
  void draw(){
    
    state_1 =((start)&&(!exp)&&(!hide));
    state_2 = ((!start)&&(exp)&&(!hide));
    state_3 = ( (!start)&&(!exp)&&(hide));
    if(state_1){
      move();
      strokeWeight(3);
      stroke(oColor);
      line(x,y,oldX,oldY);
    }
    if(state_2){
      expduration();
      noStroke();
      strokeWeight(weight);
      stroke(rColor);
      if(random(1)>0.5)
      {
        for(int i = 0; i < amount + 10; i++){
          pushMatrix();
          translate(x,y);
          l = 13*cos(radians(i*angle))-5*cos(2*radians(i*angle))-2*cos(3*radians(i*angle))-cos(4*radians(i*angle));
           point(-16*pow(sin(radians(i*angle)),3)*explodeTimer,-l*explodeTimer);
          popMatrix();
        }
       
      }
      else
      {
         for(int i = 0; i < amount + 10; i++){
          pushMatrix();
          translate(x,y);
          
          point(sin(radians(i*angle))*explodeTimer,cos(radians(i*angle))*explodeTimer);
          popMatrix();
        }
      
      }
       
    }
   
  }
  void prep(){
    x = oldX = mouseX ;
    y = oldY = height;
    finalx = mouseX;
    targetY = mouseY;
    speed = random(3) + 2;
    colorMode(HSB);
    rColor = color(random(255), 255, 255);
    oColor = color(random(255), 255, 255);
    amount = ceil(random(30)) + 20;
    weight = ceil(random(3));
    duration = ceil(random(4))*20 + 30;
    angle = 360/amount;
    start = true;
    exp = false;
    hide = false;
  }
  void move(){
    oldX = x;
    oldY = y;
    if(dist(x,y,finalx,targetY) > 6){
     
      y += -speed;
    }else{
      explode();
    }
  }
  void explode(){
    explodeTimer = 0;
    start = false;
    exp = true;
    hide = false;
  }
  void expduration(){
    if(explodeTimer < duration){
      explodeTimer+= 0.5;
    }else{
      disappear();
    }
  }
  void disappear(){
    start = false;
    exp = false;
    hide = true;
  }
}
