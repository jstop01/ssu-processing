public class Scene_215 extends BaseScene {
  @Override
  public int getNextScene() { return 216; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("215001"));
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
