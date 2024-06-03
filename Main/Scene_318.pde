// 오누이 썩은 동아줄 분기, 313으로 다시 돌아가야 함.
public class Scene_318 extends BaseScene {
  @Override
  public int getPreviousScene() { return 317; }

  @Override
  public int getNextScene() { return 313; }

  private Button retryButton;

  public void setup() {
    uiManager.dialogUi.enqueueAll(uiManager.getDialogForScene(this));
    uiManager.dialogUi.next();

    loadBackground("55", drawManager);

    setup_Scene_301_BG(drawManager);

    retryButton = new Button();
    retryButton.text = "되돌아가시겠습니까?";
    retryButton.position = new PVector(1000, 500);
    retryButton.size = new PVector(300, 100);

    soundManager.playOnce("res/sound/effect/318_바람소리.mp3");
  }
 
  public void draw() {
    pushStyle();
    
    drawGradientBackground();
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
