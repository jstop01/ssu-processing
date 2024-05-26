public class Scene_212 extends BaseScene {
  @Override
  public int getNextScene() { return 213; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("212001"));
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
