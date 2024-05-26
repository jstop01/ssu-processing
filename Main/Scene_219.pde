public class Scene_219 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 220; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("219001"));
    uiManager.dialogUi.push(uiManager.getDialogDataById("219002"));
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
