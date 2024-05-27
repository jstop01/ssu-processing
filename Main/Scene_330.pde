public class Scene_330 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return -1; }
  public void setup() {
    uiManager.dialogUi.set(uiManager.getDialogDataById("330001"));


    var cloud1 = new Cloud_Normal(width / 2 - 600, 500);
    drawManager.addDrawable(cloud1);

    var cloud2 = new Cloud_Normal(width / 2 + 200, 500);
    drawManager.addDrawable(cloud2);
    
    var boy = objectFactory.create(ObjectType.boy, ObjectPoseType.seat);
    boy.setPosition(width / 2 - 300, 500);
    boy.setScale(0.6, 0.6);
    drawManager.addDrawable(boy);

    var girl = objectFactory.create(ObjectType.girl, ObjectPoseType.seat);
    girl.setPosition(width / 2 + 300, 500);
    girl.setScale(-0.6, 0.6);
    drawManager.addDrawable(girl);
  }
 
  public void draw() {
    pushStyle();
    
    
    drawManager.drawing();
    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    sceneManager.loadScene(new Scene_Credit());
  }
}
