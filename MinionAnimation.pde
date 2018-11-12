void setup()
{
  size(736, 552);
  background(120, 240, 182);

}  
  
 
void draw()
 
{
  background(120, 240, 182);
  translate(100,0);
  
   
  
  noStroke();
  fill(234, 194, 73);
      
  rect(115, 416, -12, 65);
  ellipse(115, 416, 24, 24);
      
  rect(315, 416, 12, 65);
  ellipse(315, 416, 24, 24);
   
  fill(253, 243, 0); 
  ellipse(215, 270, 200, 200);
  rect(115, 270, 200, 175);
   
  stroke(96, 96, 96); 
  strokeWeight(10);
  line(115, 280, 315, 280);
  stroke(0);
  line(115, 290, 315, 290);
   
  fill(210, 184, 34); 
  noStroke();
  ellipse(256, 280, 70, 70);
  ellipse(176, 280, 70, 70);
   
  noFill(); 
  stroke(210, 184, 34);
  strokeWeight(13);
  ellipse(174, 282, 80, 80);
  ellipse(254, 282, 80, 80);
   
  noFill(); 
  stroke(255);
  strokeWeight(13);
  ellipse(176, 278, 80, 80);
  ellipse(256, 278, 80, 80);
   
  noFill(); 
  stroke(230);
  strokeWeight(13);
  ellipse(175, 280, 80, 80);
  ellipse(255, 280, 80, 80);
   
   
  fill(255); 
  noStroke();
  ellipse(175.5, 280, 67.5, 55);
  ellipse(255.5, 280, 67.5, 55);
   
 
  fill(mouseY/4+189, mouseY/2+19, 171);   
  ellipse(250+(mouseX/60), 285+(mouseY/60), 25, 25);
  ellipse(180+(mouseX/60), 285+(mouseY/60), 25, 25);

  
  fill(0); 
  ellipse(250+(mouseX/60), 285+(mouseY/60), 12.5, 12.5);
  ellipse(180+(mouseX/60), 285+(mouseY/60), 12.5, 12.5);
  
  fill(255);
  ellipse(253+(mouseX/60), 280+(mouseY/60), 8, 8);
  ellipse(185+(mouseX/60), 280+(mouseY/60), 8, 8);
  
 
  fill(63, 73, 185);
  rect(152, 390, 126, 60);
  arc(265.5, 440, 100, 120, 0, HALF_PI); 
  arc(165, 440, 100, 120, 0, PI);
  rect(152, 450, 130, 50, 0, 0, 20, 20);
  fill(13, 25, 158);
  arc(215, 430, 60, 60, 0, PI);
  rect(185, 420, 60, 12);
   
 
  quad(172, 500, 214, 500, 214, 532, 180, 532);  
  quad(182+40, 500, 224+40, 500, 216+40, 532, 182+40, 532);
  quad(262, 404, 320, 382, 326, 396, 268, 418); 
  quad(105, 396, 110, 382, 170, 404, 165, 418); 
   
  
  fill(0);
  ellipse(272, 408, 10, 10);
  ellipse(159, 408, 10, 10);
   
  
  fill(96);
  quad(175, 526, 210, 532, 210, 548, 162, 548);
  ellipse(172, 540, 30, 29);
  quad(226, 532, 255, 526, 263, 548, 226, 548); 
  ellipse(260, 540, 30, 29);
  fill(28);
  rect(214, 548, -58, 552); 
  rect(216+60, 548, -54, 552);
   
  
  fill(28); 
  ellipse(120, 506, 16, 16);
  fill(55);
  ellipse(113, 510, 16, 16);
  fill(96);
  triangle(109, 510, 96, 480, 122, 480);
  ellipse(109, 497, 25, 25);
  ellipse(104, 503, 15, 25);
  ellipse(107, 508, 15, 15);
  fill(28); 
  ellipse(310, 506, 16, 16);
  fill(55);
  ellipse(317, 510, 16, 16);
  fill(96);
  triangle(321, 510, 310, 480, 333, 480);
  ellipse(321, 497, 25, 25);
  ellipse(326, 503, 15, 25);
  ellipse(323, 508, 15, 15);
   
  
  fill(112, 60, 22);
  arc(220, 355, 95, 30, 0, PI);
  
   
  
  fill(255);
  rect(220, 345, 20, 15, 6);
  rect(200, 345, 20, 15, 6);
  rect(180, 345, 20, 15, 6);
  rect(240, 345, 20, 15, 6);
  fill(253, 243, 0);
  rect(220-47.5, 355, 95, -10);
  print(mouseX,mouseY);
  textSize(32);
  text("EMPEROR", 140, 470);
}
