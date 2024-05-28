public class Scene_105 extends BaseScene {
  @Override
  public int getPreviousScene() { return 105; }

  @Override
  public int getNextScene() { return 106; }
  public void setup() {
    Scene_103_mountain_and_ground_setup(drawManager);

    var boy = objectFactory.create(CharacterType.boy, CharacterPoseType.smile);
    boy.setPosition(450, 600);
    //boy.setScale(2f, 2f);
    drawManager.addDrawable(boy);
    
    var girl = objectFactory.create(CharacterType.girl, CharacterPoseType.smile);
    girl.setPosition(1000, 700);
    //girl.setScale(2f, 2f);
    drawManager.addDrawable(girl);

    var riceCake = objectFactory.create("res/images/object/ricecake_01_02.png");
    riceCake.setPosition(600, 500);
    riceCake.setScale(2f, 2f);
    drawManager.addDrawable(riceCake);

    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("105001"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("105002"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("105003"));

    uiManager.dialogUi.next();
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
