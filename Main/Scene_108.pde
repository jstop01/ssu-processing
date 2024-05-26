public class Scene_108 extends BaseScene {
  @Override
  public int getPreviousScene() { return 108; }

  @Override
  public int getNextScene() { return 109; }
  public void setup() {
    println("Scene_108 : setup");
    uiManager.dialogUi.push(uiManager.getDialogDataById("108001"));
    uiManager.dialogUi.push(uiManager.getDialogDataById("108002"));
  }
 
  public void draw() {
    pushStyle();
    
    
    drawManager.drawing();
    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
