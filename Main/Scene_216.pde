public class Scene_216 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 217; }
  public void setup() {
    uiManager.dialogUi.enqueueAll(uiManager.getDialogForScene(this));
    uiManager.dialogUi.next();

    loadBackground("31", drawManager);


    var 우물 = objectFactory.create("res/images/object/well.png");
    우물.setPosition(450, 400);
    우물.setScale(0.5, 0.5);
    drawManager.addDrawable(우물);


    var tiger = objectFactory.create(CharacterType.tiger, CharacterPoseType.well);
    tiger.setPosition(470, 550);
    tiger.setScale(0.6f, 0.6f);
    drawManager.addDrawable(tiger);

    // 배경 나중에
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
