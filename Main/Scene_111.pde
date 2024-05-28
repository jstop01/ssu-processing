// 엄마를 먹고도 아직 배고픈 호랑이
public class Scene_111 extends BaseScene {
  @Override
  public int getPreviousScene() { return 111; }

  @Override
  public int getNextScene() { return 112; }
  public void setup() {
    uiManager.dialogUi.set(uiManager.getDialogDataById("111001"));

    Scene_108_background_setup(drawManager);

    var tiger = objectFactory.create(CharacterType.tiger, CharacterPoseType.hungry);
    tiger.setPosition(450, 400);
    tiger.setScale(0.5, 0.5);
    drawManager.addDrawable(tiger);

    Scene_108_background_setup2(drawManager);
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
