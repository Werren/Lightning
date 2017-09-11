int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;
void setup ()
{
  size(300, 300);
  strokeWeight(2);
  background(0);
}
//idek what i'm doing at this point tbh
void draw()
{
  stroke((int)(Math.random()*20), (int)(Math.random()*20), (int)(Math.random()*256));
  while (endX <= 300) {
    endX=startX+((int)(Math.random()*19)-9);
    endY=startY+((int)(Math.random()*10));
    line(startX, startY, endX, endY);
    startX=endX;
    startY=endY;
  }
  noStroke();
  fill(200, 200, 200);
  ellipse(150, 0, 300, 50);
}

void mousePressed()
{
  startX = (int)(Math.random()*301);
  startY = 0; 
  endX = 150;
  endY = (int)(Math.random()*301);
}
