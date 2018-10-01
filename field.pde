dot[] dots = new dot[1000];

void setup()
{
  //translate(width/2,height/2);
  frameRate(60);
  background(0);
  fullScreen();
  noStroke();
  colorMode(HSB);
  //size(800,800);
  translate(width/2, height/2);
  for(int i = 0; i < dots.length; i++)
  {
    dots[i] = new dot();
  }
}

void draw()
{
  
  fill(0, 10);
  rect(0, 0, width, height);
  for(int i = 0; i < dots.length; i++)
  {
    dots[i].update();
    dots[i].show();
  }
}