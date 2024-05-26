public class Scene_110 extends BaseScene {
  @Override
  public int getPreviousScene() { return 110; }

  @Override
  public int getNextScene() { return 111; }
  public void setup() {
    uiManager.dialogUi.set(uiManager.getDialogDataById("110001"));
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
