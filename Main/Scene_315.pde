public class Scene_315 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 316; }
  public void setup() {
    uiManager.dialogUi.set(uiManager.getDialogDataById("315001"));

    var oldRope = objectFactory.create("res/objects/rope_old.png");
    oldRope.setPosition(width / 2, 200);
    oldRope.setScale(0.1, 0.1);
    drawManager.addDrawable(oldRope);

    var boy = objectFactory.create(ObjectType.boy, ObjectPoseType.climb_rope);
    boy.setPosition(width / 2 - 50, 500);
    boy.setScale(0.3, 0.3);
    drawManager.addDrawable(boy);

    var girl = objectFactory.create(ObjectType.girl, ObjectPoseType.climb_rope);
    girl.setPosition(width / 2 + 50, 500);
    girl.setScale(-0.3, 0.3);
    drawManager.addDrawable(girl);


    // 구름, 별, 마을 배경(초가집, 밭) 필요
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
