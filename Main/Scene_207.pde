public class Scene_207 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 208; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("207001"));
    uiManager.dialogUi.push(uiManager.getDialogDataById("207002"));
    uiManager.dialogUi.push(uiManager.getDialogDataById("207003"));
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
