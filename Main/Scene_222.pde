public class Scene_222 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 301; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("222001"));
    uiManager.dialogUi.push(uiManager.getDialogDataById("222002"));
    uiManager.dialogUi.push(uiManager.getDialogDataById("222003"));
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
