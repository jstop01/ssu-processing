public class Scene_110 extends BaseScene {
  @Override
  public int getPreviousScene() { return 110; }

  @Override
  public int getNextScene() { return 111; }
  public void setup() {
    uiManager.dialogUi.set(uiManager.getDialogDataById("110001"));

    var storyboard = objectFactory.create("compressedRes/storyboard/110.png");
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
