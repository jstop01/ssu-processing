// 호랑이에게 팥떡이나 쑥떡을 주는 게임
public class Scene_204 extends BaseScene {
  // // 팥 떡 분기
  // @Override
  // public int getNextScene() { return 205; }

  //쑥 떡 분기
  @Override
  public int getPreviousScene() { return 203; }

  @Override
  public int getNextScene() { return 218; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("204001"));
    uiManager.dialogUi.push(uiManager.getDialogDataById("204002"));
    uiManager.dialogUi.push(uiManager.getDialogDataById("204003"));
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
