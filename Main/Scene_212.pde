public class Scene_212 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 213; }
  public void setup() {

    // 호랑이 배에 꼬매진 자국이 없는데?
    var tiger = objectFactory.create(CharacterType.tiger, CharacterPoseType.lay_02);
    tiger.setPosition(width / 2 + 150, 450);
    tiger.setScale(-0.4f, 0.4f);
    drawManager.addDrawable(tiger);

    Drawable openDoor = new OpenDoor(width / 2 + 300, height / 2);
    drawManager.addDrawable(openDoor);
    uiManager.dialogUi.set(uiManager.getDialogDataById("212001"));

    Scene_211_Family_Setup(drawManager);
  }
 
  public void draw() {
    pushStyle();
    
    background(#F5E8A8);
    drawManager.drawing();
    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
