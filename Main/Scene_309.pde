public class Scene_309 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 310; }
  public void setup() {
    uiManager.dialogUi.enqueueAll(uiManager.getDialogForScene(this));
    uiManager.dialogUi.next();

    // 나무 필요

    // 땅 필요

    // 구름 필요

    var tiger = objectFactory.create(CharacterType.tiger, CharacterPoseType.climb);
    tiger.setPosition(500, 500);
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
