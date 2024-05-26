// 호랑이가 참기름과 도끼를 선택하는 상황
// 참기름 선택시 현재 씬으로 다시 돌아옴
public class Scene_308 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 309; }
  public void setup() {
    uiManager.dialogUi.set(uiManager.getDialogDataById("308001"));
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
