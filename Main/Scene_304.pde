public class Scene_304 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 305; }
  public void setup() {
    uiManager.dialogUi.enqueueAll(uiManager.getDialogForScene(this));
    uiManager.dialogUi.next();

    setup_Scene_301_BG(drawManager);

    var tiger = objectFactory.create(CharacterType.tiger_mom, CharacterPoseType.back);
    tiger.setPosition(600, 500);
    tiger.setScale(0.3, 0.3);
    drawManager.addDrawable(tiger);
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
