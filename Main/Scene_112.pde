public class Scene_112 extends BaseScene {
  @Override
  public int getPreviousScene() { return 112; }

  @Override
  public int getNextScene() { return 113; }
  public void setup() {
    //uiManager.dialogUi.push(uiManager.getDialogDataById("108001"));
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
