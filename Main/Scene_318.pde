// 오누이 썩은 동아줄 분기, 313으로 다시 돌아가야 함.
public class Scene_318 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 313; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("318001"));
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
