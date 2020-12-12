final int MAX_HEIGHT = 5;
int rows, columns;
int[][] obstacles;
color[][] faceColor;
color[][] topColor;
float obstacleRate = 0.05;

void drawCube(int CubeHeight, int row, int column) {
  noStroke();
  //front
  fill(faceColor[row][column]); 
  beginShape(QUAD);
  vertex(-1,-2*CubeHeight,1);
  vertex(-1,0,1);
  vertex(1,0,1);
  vertex(1,-2*CubeHeight,1);
  endShape();

  //right
  fill(faceColor[row][column]); 
  beginShape(QUAD);
  vertex(1,-2*CubeHeight,1);
  vertex(1,-2*CubeHeight,-1);
  vertex(1,0,-1);
  vertex(1,0,1);
  endShape();

  //fill(0,0,255);
  beginShape(QUAD);
  vertex(1,-2*CubeHeight,-1);
  vertex(-1,-2*CubeHeight,-1);
  vertex(-1,0,-1);
  vertex(1,0,-1);
  endShape();
  
  //left
  fill(faceColor[row][column]); 
  beginShape(QUAD);
  vertex(-1,-2*CubeHeight,-1);
  vertex(-1,-2*CubeHeight,1);
  vertex(-1,0,1);
  vertex(-1,0,-1);
  endShape();

  //fill(255,0,0);
  beginShape(QUAD);
  vertex(-1,0,1);
  vertex(1,0,1);
  vertex(1,0,-1);
  vertex(-1,0,-1);
  endShape();

  //top
  fill(topColor[row][column]); 
  beginShape(QUAD);
  vertex(1,-2*CubeHeight,1);
  vertex(-1,-2*CubeHeight,1);
  vertex(-1,-2*CubeHeight,-1);
  vertex(1,-2*CubeHeight,-1);
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
      drawCube(obstacles[planeDepth][planeWidth], planeDepth, planeWidth);
      popMatrix();
      translate(2,0,0);
    }
    popMatrix();
  }
}

int[][] obstaclesSetup(){
  int [][] result = new int [rows][columns];
  Random rand = new Random();
  int iheight;
  for(int iRow = 0; iRow < rows; iRow++){
    for(int iColumn = 0; iColumn < columns; iColumn++){
      rand = new Random();
      iheight = rand.nextInt(20);
      if(iheight == 0){
        result[iRow][iColumn] = (int)random(2,MAX_HEIGHT);
      }
      else
        result[iRow][iColumn] = 1;
    }
  }
  return result;
}

color [][] randomColors(){
  color [][] result = new color [rows][columns];
  for(int iRow = 0; iRow < rows; iRow++){
    for(int iColumn = 0; iColumn < columns; iColumn++){
      result[iRow][iColumn] = color(random(0,255)/255,random(0,255)/255, random(0,255)/255);
    }
  }
  return result;
}
