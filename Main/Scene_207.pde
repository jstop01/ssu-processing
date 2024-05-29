public class Scene_207 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 208; }
  public void setup() {
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("207001"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("207002"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("207003"));
    uiManager.dialogUi.next();

    Scene_202_bg_setup(drawManager);
    var tiger = objectFactory.create(CharacterType.tiger, CharacterPoseType.lay_01);
    tiger.setPosition(width / 2, 600);
    tiger.setScale(-0.6f, 0.6f);
    drawManager.addDrawable(tiger);

    var candle = new Candle(900, 450);
    drawManager.addDrawable(candle);
  }
 
  public void draw() {
    pushStyle();
    
    
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
