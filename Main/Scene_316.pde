public class Scene_316 extends BaseScene {
  @Override
  public int getNextScene() { return 317; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("316001"));
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
