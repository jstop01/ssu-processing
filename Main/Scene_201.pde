public class Scene_201 extends BaseScene {
  @Override
  public int getPreviousScene() { return 201; }

  @Override
  public int getNextScene() { return 202; }
  public void setup() {
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("201001"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("201002"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("201003"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("201004"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("201005"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("201006"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("201007"));
    uiManager.dialogUi.next();

    var storyboard = objectFactory.create("compressedRes/images/storyboard/201.png");
    storyboard.setPosition(width / 2, height / 2);
    drawManager.addDrawable(storyboard);
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
