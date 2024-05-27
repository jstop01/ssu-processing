// 호랑이가 썩은 동아줄을 고르는 미니게임
public class Scene_324 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 325; }
  public void setup() {
    uiManager.dialogUi.set(uiManager.getDialogDataById("324001"));

    PVector ropeScale = new PVector(0.1, 0.1);
    var oldRope = objectFactory.create("compressedRes/images/objects/rope_old.png");
    oldRope.setPosition(width / 2, 000);
    oldRope.setScale(ropeScale.x, ropeScale.y);
    startAnimation(new MoveAnimation(oldRope, width / 2, 200, 2));
    drawManager.addDrawable(oldRope);

    // 호랑이 손 필요
  }
 
  public void draw() {
    pushStyle();
    
    drawGradientBackground();
    drawManager.drawing();
    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
