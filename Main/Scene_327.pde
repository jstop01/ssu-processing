public class Scene_327 extends BaseScene {
  @Override
  public int getNextScene() { return 328; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("327001"));
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
