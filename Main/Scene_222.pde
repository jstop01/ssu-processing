public class Scene_222 extends BaseScene {
  @Override
  public int getNextScene() { return 301; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("222001"));
    uiManager.dialogUi.push(uiManager.getDialogDataById("222002"));
    uiManager.dialogUi.push(uiManager.getDialogDataById("222003"));
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
