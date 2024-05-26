public class Scene_113 extends BaseScene {
  @Override
  public int getNextScene() { return 114; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("113001"));
    uiManager.dialogUi.push(uiManager.getDialogDataById("113002"));
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
