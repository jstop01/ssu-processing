public class Scene_111 extends BaseScene {
  @Override
  public int getPreviousScene() { return 111; }

  @Override
  public int getNextScene() { return 112; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("111001"));
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
