public class Scene_206 extends BaseScene {
  @Override
  public int getNextScene() { return 207; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("206001"));
    uiManager.dialogUi.push(uiManager.getDialogDataById("206002"));
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
