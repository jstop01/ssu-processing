public class Scene_205 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 206; }
  public void setup() {
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("205001"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("205002"));
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
