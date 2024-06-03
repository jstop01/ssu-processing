// 하늘에서 내려온 동아줄 중 튼튼한 새 동아줄을 잡은 오누이
public class Scene_319 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 320; }
  public void setup() {
    uiManager.dialogUi.enqueueAll(uiManager.getDialogForScene(this));
    uiManager.dialogUi.next();

    loadBackground("56", drawManager);


    // 리소스 교체 필요?
    var rope = objectFactory.create("res/images/object/rope_strong.png");
    rope.setPosition(width / 2, -650);
    rope.setScale(0.3, 0.3);
    drawManager.addDrawable(rope);

    soundManager.playOnce("res/sound/effect/314.319_밧줄잡는소리.mp3");
  }
 
  public void draw() {
    pushStyle();
    
    
    drawManager.drawing();
    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}