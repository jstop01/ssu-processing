// 호랑이에게 팥떡이나 쑥떡을 주는 게임
public class Scene_204 extends BaseScene {
  GhostLegGameManager gameManager;
  // 팥 떡 분기
  //@Override
  //public int getNextScene() { return 205; }

  // 쑥 떡 분기
  @Override
  public int getNextScene() { return 218; }

  @Override
  public int getPreviousScene() { return 203; }

  public void setup() {
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("204001"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("204002"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("204003"));
    uiManager.dialogUi.next();

    var bg = objectFactory.create("res/images/object/inside_house.png");
    bg.setPosition(width / 2, height / 2);
    bg.setScale(0.25, 0.25);
    drawManager.addDrawable(bg);
    

    var 팥떡 = objectFactory.create("res/images/object/ricecake_02_02.png");
    팥떡.setPosition(400, 400);
    팥떡.setScale(1.2, 1.2);
    drawManager.addDrawable(팥떡);

    var 쑥떡 = objectFactory.create("res/images/object/ricecake_01_02.png");
    쑥떡.setPosition(800, 410);
    쑥떡.setScale(1.2, 1.2);
    drawManager.addDrawable(쑥떡);

    var boy = objectFactory.create(CharacterType.boy, CharacterPoseType.point);
    boy.setPosition(width / 2, 750);
    boy.setScale(0.8f, 0.8f);
    drawManager.addDrawable(boy);

    gameManager = new GhostLegGameManager(2, new int[] {205, 218}, new Drawable[]{팥떡, 쑥떡});
  }
 
  public void draw() {
    pushStyle();
    
    
    drawManager.drawing();
    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    gameManager.update();
    if (uiManager.dialogUi.next()) {
      return;
    }
    loadNextScene();
  }
}
