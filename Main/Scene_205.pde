public class Scene_205 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 206; }
  public void setup() {
    uiManager.dialogUi.enqueueAll(uiManager.getDialogForScene(this));
    uiManager.dialogUi.next();

    loadBackground("20", drawManager);

    var tiger = objectFactory.create(CharacterType.tiger, CharacterPoseType.ricecake_03_02);
    tiger.setPosition(width / 2, 800);
    tiger.setScale(1.3f, 1.3f);
    drawManager.addDrawable(tiger);

    var 팥떡 = objectFactory.create("res/images/object/ricecake_02_02.png");
    팥떡.setPosition(width / 2, 400);
    팥떡.setScale(1.2, 1.2);
    drawManager.addDrawable(팥떡);
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
