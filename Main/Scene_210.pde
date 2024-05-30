public class Scene_210 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 211; }
  public void setup() {
    uiManager.dialogUi.set(uiManager.getDialogDataById("210001"));

    var tiger = objectFactory.create(CharacterType.tiger, CharacterPoseType.lay_02);
    tiger.setPosition(width / 2, 500);
    tiger.setScale(-0.6f, 0.6f);
    drawManager.addDrawable(tiger);

    drawManager.addDrawable(new Rock1(300f, 300f, #c0c0c0));
    drawManager.addDrawable(new Rock1(350f, 300f, #c0c0c0));
    drawManager.addDrawable(new Rock1(400f, 300f, #c0c0c0));
    drawManager.addDrawable(new Rock1(450f, 300f, #c0c0c0));
    drawManager.addDrawable(new Rock1(500f, 300f, #c0c0c0));
    drawManager.addDrawable(new Rock1(550f, 300f, #c0c0c0));
    
  }
 
  float sleepEffectRemainSeconds = 0;
  public void draw() {
    pushStyle();
    
    sleepEffectRemainSeconds -= deltaTime;
    if (sleepEffectRemainSeconds < 0) {
      sleepEffectRemainSeconds = 1f;
      effectManager.addParticles(width / 2 + 250, 350, EffectType.SLEEP);
    }
    
    drawManager.drawing();
    effectManager.updateAndDraw();
    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
