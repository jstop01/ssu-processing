public class Scene_216 extends BaseScene {
  @Override
  public int getNextScene() { return 217; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("216001"));
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
