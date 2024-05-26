public class Scene_113 extends BaseScene {
  @Override
  public int getPreviousScene() { return 113; }

  @Override
  public int getNextScene() { return 114; }
  public void setup() {
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("113001"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("113002"));

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
