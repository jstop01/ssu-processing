public class Scene_312 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 313; }
  public void setup() {
    uiManager.dialogUi.set(uiManager.getDialogDataById("312001"));
    
    PVector ropeScale = new PVector(0.1, 0.1);
    var newRope = objectFactory.create("res/objects/rope_new.png");
    newRope.setPosition(350, 000);
    newRope.setScale(ropeScale.x, ropeScale.y);
    startAnimation(new MoveAnimation(newRope, 350, 200, 2));
    drawManager.addDrawable(newRope);

    var oldRope = objectFactory.create("res/objects/rope_old.png");
    oldRope.setPosition(width - 350, 000);
    oldRope.setScale(ropeScale.x, ropeScale.y);
    startAnimation(new MoveAnimation(oldRope, width - 350, 200, 2));
    drawManager.addDrawable(oldRope);

    // 구름, 동앗줄 내려오는 효과
  }
  
 
  public void draw() {
    pushStyle();
    
    drawGradientBackground();
    drawManager.drawing();
    uiManager.drawing();
    animationManager.update();
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
