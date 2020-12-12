import java.util.*;

void setup() {
  size(1200, 1200, P3D);
  //size(640, 640,P3D);
  colorMode(RGB, 1.0f);
  textureMode(NORMAL); // uses normalized 0..1 texture coords
  textureWrap(CLAMP);
  // ONLY NEEDED FOR BONUS setupPOGL(); // setup our hack to ProcesingOpenGL to let us modify the projection matrix manually

   // TODO: your setup code
   columns = (int)random(35, 60);
   rows = (int)random(8, 15);
   
   obstacles = obstaclesSetup(); //new int[rows][columns];
   
   //random colors
   faceColor = randomColors();
   topColor = randomColors();
  
  // WARNING: use loadImage to load any textures in setup or after. If you do it globally / statically processing complains.
  //  - just make a .setup or .init function on your world, player, etc., that loads the textures, and call those from here.
}


void draw() {  
  // don't use resetMatrix to start. It clears the modelView matrix, which includes your camera.
  // if you change the camera, you need to build the model again, so only do at beginning of draw.
  
  clear();
  resetMatrix();

  //aligned perspectives based on simple cube drawing
  if (!orthoMode) {
    frustum(-1, 1, -1, 1, 2, 4);
    //translate(0,0,-5);
    //translate(0,0,-3.1);
  } else {
    ortho(-1, 1, -1, 1, 2, 8);
    //scale(0.5);
  }

    //testing projections
  
    translate(0,0,-2.1);
    scale(0.5);
    //drawCube(1,1,1);
    stroke(255,255,255);
    strokeWeight(15);
    noFill();
    //translate(-1,1,0);
    translate(-1.9,1.5,0);
    scale(.1);
    //drawCube(1);
    //drawPlane(rows, 14, MAX_HEIGHT);
    drawPlane(rows, columns, MAX_HEIGHT);
  
  
}
