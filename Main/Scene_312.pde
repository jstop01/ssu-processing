public class Scene_312 extends BaseScene {
  @Override
  public int getNextScene() { return 313; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("312001"));
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
