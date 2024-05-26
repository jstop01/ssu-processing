public class Scene_111 extends BaseScene {
  @Override
  public int getPreviousScene() { return 111; }

  @Override
  public int getNextScene() { return 112; }
  public void setup() {
    uiManager.dialogUi.set(uiManager.getDialogDataById("111001"));
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
