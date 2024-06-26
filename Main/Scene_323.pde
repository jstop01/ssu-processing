public class Scene_323 extends BaseScene {
  @Override
  public int getPreviousScene() { return 322; }

  @Override
  public int getNextScene() { return 324; }
  public void setup() {
    uiManager.dialogUi.enqueueAll(uiManager.getDialogForScene(this));
    uiManager.dialogUi.next();

    loadBackground("60", drawManager);

    PVector ropeScale = new PVector(0.1, 0.1);
    var oldRope = objectFactory.create("res/images/object/rope_weak.png");
    oldRope.setPosition(width / 2, 000);
    oldRope.setScale(ropeScale.x, ropeScale.y);
    startAnimation(new MoveAnimation(oldRope, width / 2, 200, 2));
    drawManager.addDrawable(oldRope);

    // 동앗줄 내려오는 효과
    soundManager.playOnce("res/sound/effect/323_천둥소리.mp3");
  }
 
  public void draw() {
    pushStyle();
    
    drawGradientBackground();
    drawManager.drawing();
    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    if (uiManager.dialogUi.next()) {
      return;
    }
    loadNextScene();
  }
}
