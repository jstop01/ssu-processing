public class Scene_106 extends BaseScene {
  @Override
  public int getPreviousScene() { return 106; }

  @Override
  public int getNextScene() { return 107; }
  public void setup() {
    println("Scene_106 : setup");

    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("106001"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("106002"));

    uiManager.dialogUi.next();

    var storyboard = objectFactory.create("compressedRes/images/storyboard/106.png");
    storyboard.setPosition(width / 2, height / 2);
    drawManager.addDrawable(storyboard);
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
