public class Scene_114 extends BaseScene {
  @Override
  public int getPreviousScene() { return 113; }

  @Override
  public int getNextScene() { return 201; }
  public void setup() {
    uiManager.dialogUi.set(uiManager.getDialogDataById("114001"));

    var storyboard = objectFactory.create("compressedRes/images/storyboard/114.png");
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
