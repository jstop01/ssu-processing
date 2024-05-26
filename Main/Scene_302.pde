public class Scene_302 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 303; }
  public void setup() {
    var boy = objectFactory.create(ObjectType.boy, ObjectPoseType.point);
    boy.setPosition(200, 700);
    boy.setScale(0.3, 0.3);
    drawManager.addDrawable(boy);

    var girl = objectFactory.create(ObjectType.girl, ObjectPoseType.back);
    girl.setPosition(100, 700);
    girl.setScale(0.3, 0.3);
    drawManager.addDrawable(girl);

    // 구름 필요

    // 나무 리소스 교체 필요

    var tree1 = objectFactory.create(BackgroundType.무서운나무);
    tree1.setPosition(200, 300);
    tree1.setScale(0.02, 0.02);
    drawManager.addDrawable(tree1);

    var tree2 = objectFactory.create(BackgroundType.무서운나무);
    tree2.setPosition(300, 300);
    tree2.setScale(0.02, 0.02);
    drawManager.addDrawable(tree2);

    var tree3 = objectFactory.create(BackgroundType.무서운나무);
    tree3.setPosition(400, 300);
    tree3.setScale(0.02, 0.02);
    drawManager.addDrawable(tree3);

    var tree4 = objectFactory.create(BackgroundType.무서운나무);
    tree4.setPosition(500, 300);
    tree4.setScale(0.02, 0.02);
    drawManager.addDrawable(tree4);

    var bigTree = objectFactory.create(BackgroundType.무서운나무);
    bigTree.setPosition(1200, 300);
    bigTree.setScale(0.05, 0.05);
    drawManager.addDrawable(bigTree);



    uiManager.dialogUi.set(uiManager.getDialogDataById("302001"));
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
