
ArrayList<Point>    points    = new ArrayList<Point>();
ArrayList<Edge>     edges     = new ArrayList<Edge>();
ArrayList<Triangle> triangles = new ArrayList<Triangle>();
int clicks = 0;

void setup(){
  size(800,800,P3D);
  frameRate(30);
}


void draw(){
  //clear the display
  background(255);
  
  // code to convert the display into a RIGHT HAND coordinate system
  // remove if you're ok using a left hand coordinate system
  translate( 0, height, 0);
  scale( 1, -1, 1 );
  
  for (int i = 0; i < points.size(); i++) 
  {
  Point p1 = points.get(i);
  p1.draw();
  textRHC(i+1,points.get(i).p.x,points.get(i).p.y);
  
  //if(points.size()>= 1)
  //  {Point p0 = points.get(i-1);}
}
   for (int j = 0; j < edges.size(); j++)
   {
     Edge e1 = edges.get(j);
     e1.draw();
    }
    
      for (int k = 0; k < triangles.size(); k++)
   {
     Triangle T1 = triangles.get(k);
     T1.draw();
    }

}

void mousePressed()
{  
 // calculate the mouse poisition in a RIGHT HAND coordinate system
  int mouseXRHC = mouseX;
  int mouseYRHC = height-mouseY;
   clicks ++;
  // Add the click to the point list, considering a RIGHT HAND coordinate system
  points.add( new Point(mouseXRHC,mouseYRHC) );
  //draw();
  
    if(clicks>1)
    {
      edges.add(new Edge(points.get(clicks-2),points.get(clicks-1)));
      //println("new edge");
    }
  //// Use the following line instead, if using a left hand coordinate system
  //points.add( new Point(mouseX,mouseY) );
      if(clicks%3 == 0)
    {
      triangles.add(new Triangle(points.get(clicks-3),points.get(clicks-2),points.get(clicks-1)));
      //println("new edge");
    }
  
  // TODO: Further fill in this function
}

// Special functions to draw text in a RIGHT HAND coordinate system
void textRHC( int s, float x, float y ){
  textRHC( Integer.toString(s), x, y );
}

void textRHC( String s, float x, float y ){
  pushMatrix();
  translate(x,y);
  scale(1.5,-1.5,1.5);
  text( s, 0, 0 );
  popMatrix();
}

  
