public class Scene_315 extends BaseScene {
  @Override
  public int getNextScene() { return 316; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("315001"));
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
