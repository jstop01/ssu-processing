public class Scene_320 extends BaseScene {
  @Override
  public int getNextScene() { return 321; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("320001"));
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
