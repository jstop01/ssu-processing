public class Scene_202 extends BaseScene {
  @Override
  public int getPreviousScene() { return 202; }

  @Override
  public int getNextScene() { return 203; }
  public void setup() {
    println("Scene_202 : setup");
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("202001"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("202002"));
    uiManager.dialogUi.next();

    var bg = objectFactory.create("res/images/object/inside_door_house.png");
    bg.setPosition(width / 2, height / 2);
    bg.setScale(0.25, 0.25);
    drawManager.addDrawable(bg);

    var closet = new Closet2(130, 300);
    drawManager.addDrawable(closet);

    var tornWindow = new TornWindow(500, 50, 250, 250, 0);
    drawManager.addDrawable(tornWindow);

    var tigerHand = objectFactory.create("res/images/character/tiger_hand.png");
    tigerHand.setPosition(width / 2, 200);
    tigerHand.setScale(0.8f, 0.8f);
    drawManager.addDrawable(tigerHand);

    var boy = objectFactory.create(CharacterType.boy, CharacterPoseType.back);
    boy.setPosition(500, 600);
    boy.setScale(0.6f, 0.6f);
    drawManager.addDrawable(boy);

    var girl = objectFactory.create(CharacterType.girl, CharacterPoseType.back);
    girl.setPosition(700, 650);
    girl.setScale(0.6f, 0.6f);
    drawManager.addDrawable(girl);

    var fabric = objectFactory.create("res/images/object/fabric_01.png");
    fabric.setPosition(1100, 450);
    fabric.setScale(1, 1);
    drawManager.addDrawable(fabric);
  }
 
  public void draw() {
    pushStyle();
    
    background(255);
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
