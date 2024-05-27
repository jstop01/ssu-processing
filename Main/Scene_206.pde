public class Scene_206 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 207; }
  public void setup() {
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("206001"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("206002"));
    uiManager.dialogUi.next();

    var storyboard = objectFactory.create("res/storyboard/206.png");
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
