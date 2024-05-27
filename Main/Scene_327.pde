public class Scene_327 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 328; }
  public void setup() {
    uiManager.dialogUi.set(uiManager.getDialogDataById("327001"));

    // 리소스 교체 필요
    var oldRope = objectFactory.create("compressedRes/objects/rope_old.png");
    oldRope.setPosition(800, 200);
    oldRope.setScale(0.03, 0.03);
    drawManager.addDrawable(oldRope);

    var tiger = objectFactory.create(ObjectType.tiger, ObjectPoseType.climb);
    tiger.setPosition(500, 300);
    tiger.setScale(0.2, 0.2);
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
