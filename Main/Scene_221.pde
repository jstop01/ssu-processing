public class Scene_221 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 222; }
  public void setup() {
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("221001"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("221002"));
    uiManager.dialogUi.next();
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
