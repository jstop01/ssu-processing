public class Scene_207 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 208; }
  public void setup() {
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("207001"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("207002"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("207003"));
    uiManager.dialogUi.next();

    var storyboard = objectFactory.create("compressedRes/storyboard/207.png");
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
