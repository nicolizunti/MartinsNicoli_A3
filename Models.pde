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
  
  for(int planeWidth = 0; planeWidth < numColumns; planeWidth++){
    drawCube();
    translate(2,0,0);
  }
  
  /*drawCube();
  translate(2,0,0);
  drawCube();
  translate(2,0,0);
  drawCube();
  translate(2,0,0);
  drawCube();
  translate(-6,0,-2);
  drawCube();
  translate(2,0,0);
  drawCube();
  translate(2,0,0);
  drawCube();
  translate(2,0,0);
  drawCube();*/
}
