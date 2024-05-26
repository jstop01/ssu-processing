public class Scene_218 extends BaseScene {
  @Override
  public int getNextScene() { return 219; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("218001"));
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
