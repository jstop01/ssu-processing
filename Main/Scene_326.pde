public class Scene_326 extends BaseScene {
  @Override
  public int getNextScene() { return 327; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("326001"));
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
