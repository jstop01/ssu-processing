public class Scene_314 extends BaseScene {
  @Override
  public int getPreviousScene() { return 313; }

  @Override
  public int getNextScene() { return 315; }
  public void setup() {
    uiManager.dialogUi.enqueueAll(uiManager.getDialogForScene(this));
    uiManager.dialogUi.next();

    loadBackground("51", drawManager);


    var oldRope = objectFactory.create("res/images/object/rope_weak.png");
    oldRope.setPosition(width / 2, -200);
    oldRope.setScale(0.3, 0.3);
    drawManager.addDrawable(oldRope);

    // 오누이손 리소스 필요

    soundManager.playOnce("res/sound/effect/314.319_밧줄잡는소리.mp3");
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
