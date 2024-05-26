public class Scene_305 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 306; }
  public void setup() {
    var mountain = new Mountain(600, 300);
    drawManager.addDrawable(mountain);

    uiManager.dialogUi.set(uiManager.getDialogDataById("305001"));
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
