// 새 동아줄을 잡은 오누이는 올라가기 시작함. 호랑이가 나무에서 오누이를 바라봄.
public class Scene_320 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 321; }
  public void setup() {
    uiManager.dialogUi.enqueueAll(uiManager.getDialogForScene(this));
    uiManager.dialogUi.next();
    loadBackground("57", drawManager);

    // 리소스 교체 필요
    var rope = objectFactory.create("res/images/object/rope_strong.png");
    rope.setPosition(255, -240);
    rope.setScale(0.125, 0.125);
    drawManager.addDrawable(rope);

    var boy = objectFactory.create(CharacterType.boy, CharacterPoseType.climb_rope);
    boy.setPosition(225, 100);
    boy.setScale(0.15, 0.15);
    drawManager.addDrawable(boy);

    var girl = objectFactory.create(CharacterType.girl, CharacterPoseType.climb_rope);
    girl.setPosition(285, 100);
    girl.setScale(-0.15, 0.15);
    drawManager.addDrawable(girl);

    var tiger = objectFactory.create(CharacterType.tiger, CharacterPoseType.climb);
    tiger.setPosition(1200, 400);
    tiger.setScale(0.3, 0.3);
    drawManager.addDrawable(tiger);
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
