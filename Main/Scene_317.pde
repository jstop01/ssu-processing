public class Scene_317 extends BaseScene {
  @Override
  public int getNextScene() { return 318; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("317001"));
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
