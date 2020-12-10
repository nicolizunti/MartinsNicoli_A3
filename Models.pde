final int MAX_HEIGHT = 5;
int rows, columns;

void drawCube() {
  beginShape(QUAD);
  vertex(-1,-1,1);
  vertex(-1,1,1);
  vertex(1,1,1);
  vertex(1,-1,1);
  endShape();

  beginShape(QUAD);
  vertex(1,-1,1);
  vertex(1,-1,-1);
  vertex(1,1,-1);
  vertex(1,1,1);
  endShape();

  beginShape(QUAD);
  vertex(1,-1,-1);
  vertex(-1,-1,-1);
  vertex(-1,1,-1);
  vertex(1,1,-1);
  endShape();

  beginShape(QUAD);
  vertex(-1,-1,-1);
  vertex(-1,-1,1);
  vertex(-1,1,1);
  vertex(-1,1,-1);
  endShape();

  beginShape(QUAD);
  vertex(-1,1,1);
  vertex(1,1,1);
  vertex(1,1,-1);
  vertex(-1,1,-1);
  endShape();

  beginShape(QUAD);
  vertex(1,-1,1);
  vertex(-1,-1,1);
  vertex(-1,-1,-1);
  vertex(1,-1,-1);
  endShape();
}

void drawPlane(int numRows, int numColumns, int maxHeight){
  //drawing column
  for(int planeDepth = 0; planeDepth < numRows; planeDepth++){
    pushMatrix();
    translate(0,0,planeDepth*2*(-1));
    //drawing row
    for(int planeWidth = 0; planeWidth < numColumns; planeWidth++){
      pushMatrix();
      drawCube();
      popMatrix();
      translate(2,0,0);
    }
    popMatrix();
  }
}
