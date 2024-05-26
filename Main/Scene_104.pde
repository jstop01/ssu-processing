public class Scene_104 extends BaseScene {
  @Override
  public int getNextScene() { return 105; }

  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("104001"));
    
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
