public class Scene_213 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 214; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("213001"));
    uiManager.dialogUi.push(uiManager.getDialogDataById("213002"));
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
