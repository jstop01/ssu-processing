public class Scene_205 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 206; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("205001"));
    uiManager.dialogUi.push(uiManager.getDialogDataById("205002"));
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    drawManager.drawing();
    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
