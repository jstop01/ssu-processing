public class Scene_202 extends BaseScene {
  @Override
  public int getNextScene() { return 203; }
  public void setup() {
    println("Scene_202 : setup");
    uiManager.dialogUi.push(uiManager.getDialogDataById("202001"));
    uiManager.dialogUi.push(uiManager.getDialogDataById("202002"));
  }
 
  public void draw() {
    pushStyle();
    
    background(255);
    drawManager.drawing();
    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
