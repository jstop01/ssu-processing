public class Scene_211 extends BaseScene {
  @Override
  public int getNextScene() { return 212; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("211001"));
    uiManager.dialogUi.push(uiManager.getDialogDataById("211002"));
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
