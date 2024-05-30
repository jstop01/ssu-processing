public class Scene_303 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 304; }
  public void setup() {
    uiManager.dialogUi.enqueueAll(uiManager.getDialogForScene(this));
    uiManager.dialogUi.next();

    var boy = objectFactory.create(CharacterType.boy, CharacterPoseType.climb);
    boy.setPosition(500, 300);
    boy.setScale(0.4, 0.4);
    drawManager.addDrawable(boy);

    var girl = objectFactory.create(CharacterType.girl, CharacterPoseType.climb);
    girl.setPosition(650, 300);
    girl.setScale(0.4, 0.4);
    drawManager.addDrawable(girl);

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
