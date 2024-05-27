public class Scene_314 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 315; }
  public void setup() {
    uiManager.dialogUi.set(uiManager.getDialogDataById("314001"));

    var oldRope = objectFactory.create("compressedRes/objects/rope_old.png");
    oldRope.setPosition(width / 2, -200);
    oldRope.setScale(0.3, 0.3);
    drawManager.addDrawable(oldRope);

    // 오누이손 리소스 필요
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
