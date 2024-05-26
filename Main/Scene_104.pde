public class Scene_104 extends BaseScene {
  @Override
  public int getPreviousScene() { return 104; }

  @Override
  public int getNextScene() { return 105; }

  public void setup() {
    uiManager.dialogUi.set(uiManager.getDialogDataById("104001"));
    
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
