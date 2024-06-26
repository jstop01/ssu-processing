public class Scene_326 extends BaseScene {
  @Override
  public int getPreviousScene() { return 325; }

  @Override
  public int getNextScene() { return 327; }
  public void setup() {
    uiManager.dialogUi.enqueueAll(uiManager.getDialogForScene(this));
    uiManager.dialogUi.next();

    loadBackground("63-1", drawManager);

    // 리소스 교체 필요
    // var oldRope = objectFactory.create("res/images/object/rope_weak.png");
    // oldRope.setPosition(width / 2, -50);
    // oldRope.setScale(0.3, 0.3);
    // drawManager.addDrawable(oldRope);

    soundManager.playOnce("res/sound/effect/316.326_밧줄툭끊어지는소리.mp3");
  }
 
  public void draw() {
    pushStyle();
    
    
    drawManager.drawing();
    uiManager.drawing();
    
    popStyle();
  }
  
  int clickCount = 0;
  public void mousePressed() {
    if (clickCount == 0) {
      loadBackground("63-2", drawManager);
      uiManager.dialogUi.next();
      ++clickCount;
      return;
    }

    if (clickCount == 1) {
      loadBackground("63-3", drawManager);
      ++clickCount;
      return;
    }

    if (uiManager.dialogUi.next()) {
      return;
    }
    loadNextScene();
  }
}
