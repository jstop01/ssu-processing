public class Scene_107 extends BaseScene {
  @Override
  public int getPreviousScene() { return 107; }

  @Override
  public int getNextScene() { return 108; }
  public void setup() {
    println("Scene_107 : setup");
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("107001"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("107002"));

    uiManager.dialogUi.next();

    Scene_106_background_setup(drawManager);

    var tiger = objectFactory.create(CharacterType.tiger, CharacterPoseType.black);
    tiger.setPosition(450, 300);
    tiger.setScale(0.25, 0.25);
    drawManager.addDrawable(tiger);

    var mom = objectFactory.create(CharacterType.mom, CharacterPoseType.back_ricecake);
    mom.setPosition(850, 450);
    mom.setScale(0.5, 0.5);
    drawManager.addDrawable(mom);
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
