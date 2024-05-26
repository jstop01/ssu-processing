public class Scene_214 extends BaseScene {
  @Override
  public int getNextScene() { return 215; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("214001"));
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
