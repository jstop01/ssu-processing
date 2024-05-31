public class Scene_114 extends BaseScene {
  @Override
  public int getPreviousScene() { return 113; }

  @Override
  public int getNextScene() { return 201; }
  public void setup() {
    uiManager.dialogUi.enqueueAll(uiManager.getDialogForScene(this));
    uiManager.dialogUi.next();


    loadBackground("15-1", drawManager);
    // var bg = objectFactory.create("res/images/object/tiger_in_the_dark_bg_3.png");
    // bg.setPosition(width / 2, height / 2);
    // bg.setScale(0.25, 0.25);
    // drawManager.addDrawable(bg);

    var tiger = objectFactory.create(CharacterType.tiger_mom, CharacterPoseType.back);
    tiger.setPosition(700, 500);
    tiger.setScale(0.4, 0.4);
    drawManager.addDrawable(tiger);

    loadBackground("15-2", drawManager);
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
