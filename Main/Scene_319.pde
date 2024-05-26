public class Scene_319 extends BaseScene {
  @Override
  public int getNextScene() { return 320; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("319001"));
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
