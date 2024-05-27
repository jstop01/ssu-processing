public class Scene_323 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 324; }
  public void setup() {
    uiManager.dialogUi.set(uiManager.getDialogDataById("323001"));

    PVector ropeScale = new PVector(0.1, 0.1);
    var oldRope = objectFactory.create("compressedRes/objects/rope_old.png");
    oldRope.setPosition(width / 2, 000);
    oldRope.setScale(ropeScale.x, ropeScale.y);
    startAnimation(new MoveAnimation(oldRope, width / 2, 200, 2));
    drawManager.addDrawable(oldRope);

    // 동앗줄 내려오는 효과
  }
 
  public void draw() {
    pushStyle();
    
    drawGradientBackground();
    drawManager.drawing();
    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
