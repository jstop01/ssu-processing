public class Scene_221 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 222; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("221001"));
    uiManager.dialogUi.push(uiManager.getDialogDataById("221002"));
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
