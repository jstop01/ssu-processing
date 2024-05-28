public class Scene_105 extends BaseScene {
  @Override
  public int getPreviousScene() { return 105; }

  @Override
  public int getNextScene() { return 106; }
  public void setup() {
    var boy = objectFactory.create(CharacterType.boy, CharacterPoseType.front);
    boy.setPosition(750, 900);
    boy.setScale(2f, 2f);
    drawManager.addDrawable(boy);
    
    var girl = objectFactory.create(CharacterType.girl, CharacterPoseType.front);
    girl.setPosition(400, 800);
    girl.setScale(2f, 2f);
    drawManager.addDrawable(girl);

    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("105001"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("105002"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("105003"));

    uiManager.dialogUi.next();
  }
 
  public void draw() {
    pushStyle();
    
    
    drawManager.drawing();
    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    if (uiManager.dialogUi.next()) {
      return;
    }

    loadNextScene();
  }
}
