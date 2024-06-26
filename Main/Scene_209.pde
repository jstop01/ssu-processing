public class Scene_209 extends BaseScene {
  @Override
  public int getPreviousScene() { return 208; }

  @Override
  public int getNextScene() { return 210; }
  public void setup() {
    uiManager.dialogUi.enqueueAll(uiManager.getDialogForScene(this));
    uiManager.dialogUi.next();

    loadBackground("24", drawManager);


    var boy = objectFactory.create(CharacterType.boy, CharacterPoseType.front);
    boy.setPosition(800, 750);
    boy.setScale(1.2f, 1.2f);
    drawManager.addDrawable(boy);

    var speechBubble = objectFactory.create("res/images/object/speech-bubble_3.png");
    speechBubble.setPosition(300, 250);
    speechBubble.setScale(0.7f, 0.7f);
    drawManager.addDrawable(speechBubble);

    var tiger = objectFactory.create(CharacterType.tiger, CharacterPoseType.lay_02);
    tiger.setPosition(300, 200);
    tiger.setScale(0.26f, 0.26f);
    drawManager.addDrawable(tiger);

    soundManager.playOnce("res/sound/effect/209_아이디어효과음.mp3");
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
