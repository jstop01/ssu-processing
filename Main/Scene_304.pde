public class Scene_304 extends BaseScene {
  @Override
  public int getNextScene() { return 305; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("304001"));
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
