public class Scene_301 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 302; }

  public void setup() {
    uiManager.dialogUi.set(uiManager.getDialogDataById("301001"));


    var jar2 = objectFactory.create("Jar_2");
    jar2.setPosition(1170, 500);
    jar2.setScale(0.2, 0.2);
    drawManager.addDrawable(jar2);

    var jar1 = objectFactory.create("Jar_1");
    jar1.setPosition(1230, 500);
    jar1.setScale(0.2, 0.2);
    drawManager.addDrawable(jar1);

    drawManager.addDrawable(new Ground(-1, #BF763E));
  }

  public void draw() {
    pushStyle();

    background(#FFFFFF);
    drawManager.drawing();
    uiManager.drawing();
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
