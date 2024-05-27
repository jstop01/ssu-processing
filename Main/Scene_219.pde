public class Scene_219 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 220; }
  public void setup() {
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("219001"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("219002"));
    uiManager.dialogUi.next();

    var storyboard = objectFactory.create("compressedRes/images/storyboard/219.png");
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
