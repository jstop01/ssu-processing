public class Scene_317 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 318; }
  public void setup() {
    uiManager.dialogUi.set(uiManager.getDialogDataById("317001"));

    // 리소스 교체 필요
    var oldRope = objectFactory.create("res/objects/rope_old.png");
    oldRope.setPosition(400, 200);
    oldRope.setScale(0.03, 0.03);
    drawManager.addDrawable(oldRope);

    var boy = objectFactory.create(ObjectType.boy, ObjectPoseType.back);
    boy.setPosition(200, 500);
    boy.setScale(0.3, 0.3);
    drawManager.addDrawable(boy);

    var girl = objectFactory.create(ObjectType.girl, ObjectPoseType.back);
    girl.setPosition(400, 500);
    girl.setScale(-0.3, 0.3);
    drawManager.addDrawable(girl);

    var tiger = objectFactory.create(ObjectType.tiger, ObjectPoseType.climb);
    tiger.setPosition(1000, 300);
    tiger.setScale(0.3, 0.3);
    drawManager.addDrawable(tiger);

    // 구름 별 마을 필요
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
