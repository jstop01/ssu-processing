// 호랑이가 썩은 동아줄을 고르는 미니게임
public class Scene_324 extends BaseScene {
  @Override
  public int getNextScene() { return 325; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("324001"));
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
