public class Scene_206 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 207; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("206001"));
    uiManager.dialogUi.push(uiManager.getDialogDataById("206002"));
  }
 
  public void draw() {
    pushStyle();
    
    
    drawManager.drawing();
    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
