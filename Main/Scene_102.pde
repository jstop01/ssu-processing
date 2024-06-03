public class Scene_102 extends BaseScene {
  @Override
  public int getPreviousScene() { return 101; }

  @Override
  public int getNextScene() { return 103; }

  public void setup() {
    uiManager.dialogUi.enqueueAll(uiManager.getDialogForScene(this));
    uiManager.dialogUi.next();

    loadBackground("3", drawManager);

    soundManager.playOnce("res/sound/effect/102_웃음소리.mp3");
  }
 
  public void draw() {
    pushStyle();

    background(colors.day_sky);
    drawManager.drawing();

    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    // 테스트로 fade 연출 없애봄
    loadNextScene(false);
  }
}
