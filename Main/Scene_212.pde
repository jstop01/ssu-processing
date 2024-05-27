public class Scene_212 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 213; }
  public void setup() {
    Drawable openDoor = new OpenDoor(width / 2 + 300, height / 2);
    drawManager.addDrawable(openDoor);
    uiManager.dialogUi.set(uiManager.getDialogDataById("212001"));

    var storyboard = objectFactory.create("res/storyboard/212.png");
    storyboard.setPosition(width / 2, height / 2);
    drawManager.addDrawable(storyboard);
  }
 
  public void draw() {
    pushStyle();
    
    background(#F5E8A8);
    drawManager.drawing();
    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
