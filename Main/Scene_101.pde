public class Scene_101 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 102; }

  public void setup() {
    uiManager.dialogUi.enqueueAll(uiManager.getDialogForScene(this));
    uiManager.dialogUi.next();

    loadBackground("2", drawManager);

    var hand = objectFactory.create("res/images/character/knock_hand.png");
    hand.setPosition(width / 2 + 200, 450);
    hand.setScale(0.5, 0.5);
    drawManager.addDrawable(hand);

    soundManager.playOnce("res/sound/effect/101_노크소리.mp3");
    soundManager.playOnce("res/sound/effect/101_아침효과음.mp3");
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
