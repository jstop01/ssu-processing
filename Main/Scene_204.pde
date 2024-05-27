// 호랑이에게 팥떡이나 쑥떡을 주는 게임
public class Scene_204 extends BaseScene {
  GhostLegGameManager gameManager;
  // // 팥 떡 분기
  // @Override
  // public int getNextScene() { return 205; }
  //쑥 떡 분기
  @Override
  public int getPreviousScene() { return 203; }

  @Override
  public int getNextScene() { return 218; }
  public void setup() {
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("204001"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("204002"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("204003"));
    uiManager.dialogUi.next();

    var storyboard = objectFactory.create("compressedRes/images/storyboard/204.png");
    storyboard.setPosition(width / 2, height / 2);
    drawManager.addDrawable(storyboard);
    
    var objA = objectFactory.create(ObjectType.tiger, ObjectPoseType.front);
    objA.setPosition(100, 200);
    objA.setScale(0.2, 0.2);
    drawManager.addDrawable(objA);
    var objB = objectFactory.create(ObjectType.tiger, ObjectPoseType.front);
    objB.setPosition(300, 80);
    objB.setScale(0.1, 0.1);
    drawManager.addDrawable(objB);
    var objC = objectFactory.create(ObjectType.tiger, ObjectPoseType.front);
    objC.setPosition(500, 300);
    objC.setScale(0.1, 0.1);
    drawManager.addDrawable(objC);

    gameManager = new GhostLegGameManager(3, new int[] {205,206,207}, new Drawable[]{objA,objB,objC});
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
