final char KEY_VIEW = 'r';
final char KEY_LEFT = 'a';
final char KEY_RIGHT = 'd';
final char KEY_UP = 'w';
final char KEY_DOWN = 's';
final char KEY_JUMP = ' ';
final char KEY_BONUS = 'b';
final char KEY_TEX = 't';
final char KEY_COLLISION = 'c';

boolean keyLeft = false;
boolean keyRight = false;
boolean keyDown = false;
boolean keyUp = false;
boolean keyJump = false;
boolean doBonus = false;
boolean doTextures = false;
boolean doCollision = false;

// false is perspective mode.
boolean orthoMode = true;

void keyPressed()
{
  if (key == KEY_VIEW)
  {
    orthoMode = !orthoMode;
    System.out.println("OrthoMode: "+ orthoMode);
  }
    
  /*if (key == KEY_ROTATE_RIGHT)
  {
  }*/
}
