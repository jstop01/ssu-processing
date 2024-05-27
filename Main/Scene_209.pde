public class Scene_209 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 210; }
  public void setup() {
    uiManager.dialogUi.set(uiManager.getDialogDataById("209001"));

    var storyboard = objectFactory.create("compressedRes/images/storyboard/209.png");
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
    loadNextScene();
  }
}
