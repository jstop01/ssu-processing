// 오누이가 새 동아줄과 썩은 동아줄을 선택하는 상황
public class Scene_313 extends BaseScene {
  // // 썩은 동아줄 분기
  // @Override
  // public int getNextScene() { return 314; }

  // 새 동아줄 분기
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 319; }
  
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("313001"));
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
