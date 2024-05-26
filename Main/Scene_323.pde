public class Scene_323 extends BaseScene {
  @Override
  public int getNextScene() { return 324; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("323001"));
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
