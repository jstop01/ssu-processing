public class Scene_103 extends BaseScene {
  @Override
  public int getPreviousScene() { return 103; }

  @Override
  public int getNextScene() { return 104; }
  public void setup() {
    var boy = objectFactory.create(ObjectType.boy, ObjectPoseType.front);
    boy.setPosition(500, 400);
    boy.setScale(0.3f, 0.3f);
    drawManager.addDrawable(boy);
    
    var girl = objectFactory.create(ObjectType.girl, ObjectPoseType.front);
    girl.setPosition(350, 450);
    girl.setScale(0.3f, 0.3f);
    drawManager.addDrawable(girl);
    
    var mom = objectFactory.create(ObjectType.mom, ObjectPoseType.front);
    mom.setPosition(650, 450);
    mom.setScale(0.3f, 0.3f);
    drawManager.addDrawable(mom);

    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("103001"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("103002"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("103003"));

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
