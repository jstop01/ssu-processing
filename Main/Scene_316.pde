public class Scene_316 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 317; }
  public void setup() {
    uiManager.dialogUi.enqueueAll(uiManager.getDialogForScene(this));
    uiManager.dialogUi.next();

    // 리소스 교체 필요
    var oldRope = objectFactory.create("compressedRes/images/objects/rope_old.png");
    oldRope.setPosition(width / 2, -50);
    oldRope.setScale(0.3, 0.3);
    drawManager.addDrawable(oldRope);
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
