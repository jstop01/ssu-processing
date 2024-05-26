public class Scene_207 extends BaseScene {
  @Override
  public int getNextScene() { return 208; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("207001"));
    uiManager.dialogUi.push(uiManager.getDialogDataById("207002"));
    uiManager.dialogUi.push(uiManager.getDialogDataById("207003"));
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
