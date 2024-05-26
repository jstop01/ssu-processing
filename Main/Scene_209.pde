public class Scene_209 extends BaseScene {
  @Override
  public int getNextScene() { return 210; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("209001"));
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
