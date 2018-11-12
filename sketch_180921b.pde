
String []headlines =  {"Happy Diwali C3"};

Particle[] pr = new Particle[30];
int  x, index;
PFont f;
double w;
boolean first;
void setup(){
  size(displayWidth,displayHeight);
  smooth();
  for (int i = 0; i < pr.length; i++){
    pr[i] = new Particle();
        
    
    f = createFont("Arial",100,true);
    
    // Initialize headline offscreen to the right 
    x = width ;
    index = 0;
  }
}
void draw(){
  noStroke();
  fill(50,0,40,20);
  rect(0,0,width,height);
  for (int i = 0; i < pr.length; i++){
    pr[i].draw();
  }
    colorMode(HSB);
    fill(40, 255, 255);
    textFont(f,74) ;      
    textAlign(LEFT);
    text(headlines[index],x,180);


    x = x - 3;


    w = textWidth(headlines[index]);
    if (x < -w){
      x = width ;}
     }

void mouseReleased(){
  
  
  first = false;
  for (int i = 0; i < pr.length; i++){
    if((pr[i].state_3)&&(!first)){
      pr[i].prep();
      first = true;
    }
  }
}
