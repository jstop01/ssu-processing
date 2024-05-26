public class Scene_107 extends BaseScene {
  @Override
  public int getPreviousScene() { return 107; }

  @Override
  public int getNextScene() { return 108; }
  public void setup() {
    println("Scene_107 : setup");
    uiManager.dialogUi.push(uiManager.getDialogDataById("107001"));
    uiManager.dialogUi.push(uiManager.getDialogDataById("107002"));
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
