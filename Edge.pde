

class Edge{
  
   Point p0,p1;
   PVector v0,v1;
      
   Edge(Point _p0, Point _p1 ){
     // TODO: Fill in this function
     p0 = _p0;
     p1 = _p1;
     v0 = p0.p;
     v1 = p1.p;
     length();
     //p0 = PVector(Point _p0);
   }
    
   void draw(){
     line(v0.x,v0.y,v1.x,v1.y);
   }
   
   float length(){
     
     float LengtOftwoVectors = PVector.dist(v0,v1);
     // TODO: Fill in this function
     println("lenght is: " + LengtOftwoVectors);
     return 0;
   }
   
   //void printInfo(){
   //  println("Edge ===============");
   //  println("    Length: " + length() + " px" );
   //}   
}
