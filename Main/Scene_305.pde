public class Scene_305 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 306; }
  public void setup() {
    var mountain = new Mountain(600, 300);
    drawManager.addDrawable(mountain);
    

    var boy = objectFactory.create(CharacterType.boy, CharacterPoseType.seat);
    boy.setPosition(800, 200);
    boy.setScale(0.3, 0.3);
    drawManager.addDrawable(boy);

    var girl = objectFactory.create(CharacterType.girl, CharacterPoseType.seat);
    girl.setPosition(880, 200);
    girl.setScale(0.3, 0.3);
    drawManager.addDrawable(girl);

    var tiger = objectFactory.create(CharacterType.tiger_mom, CharacterPoseType.back);
    tiger.setPosition(300, 600);
    tiger.setScale(0.5, 0.5);
    drawManager.addDrawable(tiger);
    
    // // 나무 리소스 교체 필요
    // var bigTree = objectFactory.create(BackgroundType.무서운나무);
    // bigTree.setPosition(1000, 300);
    // bigTree.setScale(0.1, 0.1);
    // drawManager.addDrawable(bigTree);


    uiManager.dialogUi.set(uiManager.getDialogDataById("305001"));
  }
 
  public void draw() {
    pushStyle();
    
    drawGradientBackground();
    drawManager.drawing();
    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
