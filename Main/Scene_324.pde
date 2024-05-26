// 호랑이가 썩은 동아줄을 고르는 미니게임
public class Scene_324 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 325; }
  public void setup() {
    uiManager.dialogUi.set(uiManager.getDialogDataById("324001"));
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
