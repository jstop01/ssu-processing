public class Scene_216 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 217; }
  public void setup() {
    uiManager.dialogUi.set(uiManager.getDialogDataById("216001"));

    var storyboard = objectFactory.create("compressedRes/storyboard/216.png");
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
