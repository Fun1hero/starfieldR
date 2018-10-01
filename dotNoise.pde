class dot
{
  float xoff = 0.0;
  float yoff = 0.0;
  
  float x = random(-width,width);
  float y = random(-width,height);
  
  float r = random(0,255);
  float g = random(254,255);
  float b = random(254,255);
  
  void update()
  {
    if (x > width || y > height || x < -width || y < -height)
    {
      x = random(-width,width);
      y = random(-height,height);
      xoff = 0.0;
      yoff = 0.0;
    }
    else 
    {
      float o = 0.0;
      o = noise(0,1);
      println(o);
      if(o < 0.5){
        xoff += 0.5;
        yoff += 0.5;
      }
      else if(o>0.5){
        xoff -= 0.5;
        yoff -= 0.5;
      }
      
      x = x + noise(xoff);//*width;
      y = y + noise(yoff);//*height;
    }
  }
  void show()
  {
   fill(r,g,b);
   noStroke();
   stroke(r,g,b);
   ellipse(x,y,1,1); 
  }
}