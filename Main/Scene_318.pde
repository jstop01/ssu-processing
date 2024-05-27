// 오누이 썩은 동아줄 분기, 313으로 다시 돌아가야 함.
public class Scene_318 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 313; }

  private Button retryButton;

  public void setup() {
    uiManager.dialogUi.set(uiManager.getDialogDataById("318001"));

    setup_Scene_301_BG(drawManager);

    retryButton = new Button();
    retryButton.text = "되돌아가시겠습니까?";
    retryButton.position = new PVector(1000, 500);
    retryButton.size = new PVector(300, 100);
  }
 
  public void draw() {
    pushStyle();
    
    
    drawManager.drawing();
    uiManager.drawing();

    if (retryButton.drawAndCheckClick()) {
      loadNextScene();
    }
    
    popStyle();
  }
  
  public void mousePressed() {
  }
}
