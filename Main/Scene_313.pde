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

  GhostLegGameManager gameManager;
  
  public void setup() {
    uiManager.dialogUi.set(uiManager.getDialogDataById("313001"));

    PVector ropeScale = new PVector(0.15, 0.15);
    var newRope = objectFactory.create("compressedRes/images/objects/rope_new.png");
    newRope.setPosition(250, 000);
    newRope.setScale(ropeScale.x, ropeScale.y);
    startAnimation(new MoveAnimation(newRope, 350, 200, 2));
    drawManager.addDrawable(newRope);

    var oldRope = objectFactory.create("compressedRes/images/objects/rope_old.png");
    oldRope.setPosition(width - 250, 000);
    oldRope.setScale(ropeScale.x, ropeScale.y);
    startAnimation(new MoveAnimation(oldRope, width - 350, 200, 2));
    drawManager.addDrawable(oldRope);


    var boy = objectFactory.create(CharacterType.boy, CharacterPoseType.back);
    boy.setPosition(500, 500);
    boy.setScale(0.3, 0.3);
    drawManager.addDrawable(boy);

    var girl = objectFactory.create(CharacterType.girl, CharacterPoseType.back);
    girl.setPosition(800, 500);
    girl.setScale(0.3, 0.3);
    drawManager.addDrawable(girl);
    // 구름, 동앗줄 내려오는 효과 필요

    gameManager = new GhostLegGameManager(2, new int[] {319, 314}, new Drawable[]{newRope, oldRope});
  }
 
  public void draw() {
    pushStyle();

    drawGradientBackground();
    drawManager.drawing();
    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    gameManager.update();
    //loadNextScene();
  }
}
