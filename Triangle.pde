

class Triangle {
  
   Point p0,p1,p2;
   PVector v0,v1,v2,magA,magB, line1, line2, line3, line4, line5, line6;
     
   Triangle(Point _p0, Point _p1, Point _p2 ){
     // TODO: Fill in this function
     p0 = _p0;
     p1 = _p1;
     p2 = _p2;
     v0 = p0.p;
     v1 = p1.p;
     v2 = p2.p;
     ccw();
     
   }
   
   void draw(){
    // TODO: Fill in this function
    //if(ccw())
    //{
    //  println("(orientacion 0 = no orientation)");
    //}
    if (ccw()== true)
    {
      stroke(190,90,90);
      fill(190,90,90);
    }
    if(cw())
    {
    stroke(90,190,90);
      fill(90,190,90);
    }
    
    if(cw()==false &&  ccw()==false)
    {
    println("(orientacion 0 = no orientation)");
    }
    
    
    triangle(v0.x, v0.y, v1.x, v1.y, v2.x, v2.y);
    printInfo();
   }
   
   // check if a triangle is oriented counterclockwise
   boolean ccw(){
     
     float orientationValue;
     boolean flag = false;
     //PVector magA , magB;
     magA = new PVector (v2.x -v0.x,v2.y-v0.y);
     magB = new PVector (v1.x -v0.x,v1.y-v0.y);
     
     orientationValue = (magA.x*magB.y)-(magA.y*magB.x);
     
     if(orientationValue < 0)
     {
       flag = true;
     }
     //println("orientationnnnnnnnnn"+orientationValue);
     // TODO: Fill in this function
     
     return flag;
   }
   
    //check if a triangle is oriented clockwise
   boolean cw(){
     // TODO: Fill in this function
     float orientationValue;
     boolean flag = false;
     //PVector magA , magB;
     magA = new PVector (v2.x -v0.x,v2.y-v0.y);
     magB = new PVector (v1.x -v0.x,v1.y-v0.y);
     
     orientationValue = (magA.x*magB.y)-(magA.y*magB.x);
     
     if(orientationValue > 0)
     {
       flag = true;
     }
     //println("orientationnnnnnnnnn"+orientationValue);
     // TODO: Fill in this function
     
     return flag;
   }
   
   // returns the area (in pixels) of the triangle
   float area(){
     // TODO: Fill in this function
     float LengtOftwoVectors01 = PVector.dist(v0,v1);
     float LengtOftwoVectors02 = PVector.dist(v0,v2);
     float LengtOftwoVectors12 = PVector.dist(v1,v2);
     float s = ((LengtOftwoVectors01 + LengtOftwoVectors02 + LengtOftwoVectors12) / 2);
     float area = sqrt(s*(s-LengtOftwoVectors01)*(s-LengtOftwoVectors02)*(s-LengtOftwoVectors12));
     println(area);
     

     return area; 
   }
   
   // returns a PVector where x,y,z are the internal angles of the triangle (in degrees)
   PVector angles(){
     // TODO: Fill in this function
     line1 = new PVector (v1.x-v0.x,v1.y-v0.y);
     line2 = new PVector (v2.x -v0.x,v2.y-v0.y);
     line3 = new PVector (v0.x -v1.x,v0.y-v1.y);
     line4 = new PVector (v2.x -v1.x,v2.y-v1.y);
     line5 = new PVector (v1.x -v2.x,v1.y-v2.y);
     line6 = new PVector (v0.x -v2.x,v0.y-v2.y);
     float a = degrees(PVector.angleBetween(line1,line2));
     float b = degrees(PVector.angleBetween(line2,line3));
     float c = degrees(PVector.angleBetween(line5,line6));
     
     
     //float a = degrees(PVector.angleBetween(v1,v2));
     //float b = degrees(PVector.angleBetween(v0,v2));
     //float c = degrees(PVector.angleBetween(v0,v1));
    //float d = degrees(PVector.angleBetween(line3,line1));
    
    
     println("a1=" +a+" b2=" +b+ " c2=" +c );
     
     
     return new PVector(a,b,c);
   }
   
   void printInfo(){
     println("Triangle ===============");
     println("    Area: " + area() + " px" );
     println("    CW: " + cw() );
     println("    CCW: " + ccw() );
     println("    Internal Angles: " + angles() + " degrees" );
   }
   
}
