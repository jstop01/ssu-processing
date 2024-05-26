public class Scene_106 extends BaseScene {
  @Override
  public int getNextScene() { return 107; }
  public void setup() {
    println("Scene_106 : setup");

    uiManager.dialogUi.push(uiManager.getDialogDataById("106001"));
    uiManager.dialogUi.push(uiManager.getDialogDataById("106002"));
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
