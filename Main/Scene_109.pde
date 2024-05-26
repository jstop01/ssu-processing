public class Scene_109 extends BaseScene {
  @Override
  public int getPreviousScene() { return 109; }

  @Override
  public int getNextScene() { return 110; }
  public void setup() {
    uiManager.dialogUi.set(uiManager.getDialogDataById("109001"));
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
