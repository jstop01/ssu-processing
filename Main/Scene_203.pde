
public class Scene_203 extends BaseScene {
  @Override
  public int getPreviousScene() { return 203; }

  @Override
  public int getNextScene() { return 204; }
  public void setup() {
    uiManager.dialogUi.set(uiManager.getDialogDataById("203001"));

    var storyboard = objectFactory.create("compressedRes/images/storyboard/203.png");
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
