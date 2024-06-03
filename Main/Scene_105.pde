public class Scene_105 extends BaseScene {
  @Override
  public int getPreviousScene() { return 104; }

  @Override
  public int getNextScene() { return 106; }
  public void setup() {
    uiManager.dialogUi.enqueueAll(uiManager.getDialogForScene(this));
    uiManager.dialogUi.next();

    loadBackground("6", drawManager);

    var boy = objectFactory.create(CharacterType.boy, CharacterPoseType.smile);
    boy.setPosition(450, 600);
    //boy.setScale(2f, 2f);
    drawManager.addDrawable(boy);
    
    var girl = objectFactory.create(CharacterType.girl, CharacterPoseType.smile);
    girl.setPosition(800, 700);
    //girl.setScale(2f, 2f);
    drawManager.addDrawable(girl);

    var riceCake = objectFactory.create("res/images/object/ricecake_01_02.png");
    riceCake.setPosition(width / 2, height - 100);
    riceCake.setScale(1.5f, 1.5f);
    drawManager.addDrawable(riceCake);
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
