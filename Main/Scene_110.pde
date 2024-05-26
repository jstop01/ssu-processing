public class Scene_110 extends BaseScene {
  @Override
  public int getNextScene() { return 111; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("110001"));
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
