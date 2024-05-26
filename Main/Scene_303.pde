public class Scene_303 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 304; }
  public void setup() {

    var boy = objectFactory.create(ObjectType.boy, ObjectPoseType.climb);
    boy.setPosition(500, 300);
    boy.setScale(0.4, 0.4);
    drawManager.addDrawable(boy);

    var girl = objectFactory.create(ObjectType.girl, ObjectPoseType.climb);
    girl.setPosition(650, 300);
    girl.setScale(0.4, 0.4);
    drawManager.addDrawable(girl);


    uiManager.dialogUi.set(uiManager.getDialogDataById("303001"));
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
