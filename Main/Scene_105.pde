public class Scene_105 extends BaseScene {
  @Override
  public int getPreviousScene() { return 105; }

  @Override
  public int getNextScene() { return 106; }
  public void setup() {
    var boy = objectFactory.create(ObjectType.boy, ObjectPoseType.front);
    boy.setPosition(750, 900);
    boy.setScale(2f, 2f);
    drawManager.addDrawable(boy);
    
    var girl = objectFactory.create(ObjectType.girl, ObjectPoseType.front);
    girl.setPosition(400, 800);
    girl.setScale(2f, 2f);
    drawManager.addDrawable(girl);

    uiManager.dialogUi.push(uiManager.getDialogDataById("105001"));
    uiManager.dialogUi.push(uiManager.getDialogDataById("105002"));
    uiManager.dialogUi.push(uiManager.getDialogDataById("105003"));
  }
 
  public void draw() {
    pushStyle();
    
    
    drawManager.drawing();
    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
