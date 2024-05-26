public class Scene_301 extends BaseScene {
  @Override
  public int getNextScene() { return 302; }
  ShapeObject tiger;

  public void setup() {
    tiger = objectFactory.create(ObjectType.tiger_mom, ObjectPoseType.back);
    tiger.setPosition(700, 500);
    tiger.scale.x = 0.4;
    tiger.scale.y = 0.4;
    uiManager.dialogUi.push(uiManager.getDialogDataById("301001"));

    drawManager.addDrawable(new Ground(-1, #BF763E));
  }

  public void draw() {
    pushStyle();

    background(#FFFFFF);
    drawManager.drawing();
    tiger.draw();
    uiManager.drawing();
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
