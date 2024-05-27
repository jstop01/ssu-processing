public class Scene_112 extends BaseScene {
  @Override
  public int getPreviousScene() { return 112; }

  @Override
  public int getNextScene() { return 113; }
  public void setup() {
    var storyboard = objectFactory.create("compressedRes/storyboard/112.png");
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
