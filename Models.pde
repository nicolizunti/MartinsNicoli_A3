final int MAX_HEIGHT = 5;
int rows, columns;
//Set<int []> obstacles;
int[][] obstacles;
float obstacleRate = 0.05;

void drawCube(int CubeHeight) {
  beginShape(QUAD);
  vertex(-1,-2*CubeHeight,1);
  vertex(-1,0,1);
  vertex(1,0,1);
  vertex(1,-2*CubeHeight,1);
  endShape();

  beginShape(QUAD);
  vertex(1,-2*CubeHeight,1);
  vertex(1,-2*CubeHeight,-1);
  vertex(1,0,-1);
  vertex(1,0,1);
  endShape();

  beginShape(QUAD);
  vertex(1,-2*CubeHeight,-1);
  vertex(-1,-2*CubeHeight,-1);
  vertex(-1,0,-1);
  vertex(1,0,-1);
  endShape();

  beginShape(QUAD);
  vertex(-1,-2*CubeHeight,-1);
  vertex(-1,-2*CubeHeight,1);
  vertex(-1,0,1);
  vertex(-1,0,-1);
  endShape();

  beginShape(QUAD);
  vertex(-1,0,1);
  vertex(1,0,1);
  vertex(1,0,-1);
  vertex(-1,0,-1);
  endShape();

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
      drawCube(obstacles[planeDepth][planeWidth]);
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

/*
Set<int[]> obstaclesSetup(){
  
  Set<int[]> result = new HashSet<int[]>();
  int qntObstacles = (int)(columns*rows*obstacleRate);
  int[] obstacle = new int[3];  
  
  while(result.size() < qntObstacles){
    obstacle[0] = (int)random(0,rows);
    obstacle[1] = (int)random(0, columns);
    obstacle[2] = 0;
    result.add(obstacle);
  }
  
  for(int[] obst : result){
    obst[2] = (int)random(1, MAX_HEIGHT);
  }
  
  return result;
};*/
