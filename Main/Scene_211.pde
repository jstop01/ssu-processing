public class Scene_211 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 212; }
  public void setup() {
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("211001"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("211002"));
    uiManager.dialogUi.next();

    var storyboard = objectFactory.create("res/storyboard/211.png");
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
