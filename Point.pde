

class Point {
  
   PVector p;

   Point( float x, float y ){
      // TODO: Fill in this function
     // println("point1"+ x + " ===============");
      
      if(mousePressed)
      {
      p = new PVector(x,y);
      }
      
    draw();
   }

   void draw()
   {
    // TODO: Fill in this function
      stroke(0);
     // point(p.x,p.y);
      ellipse(p.x, p.y, 5, 5);
      fill(0);
   // println("point2 ===============" + p.x + " ---- " + p.y);
   }
}
