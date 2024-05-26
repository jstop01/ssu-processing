public class Scene_217 extends BaseScene {
  @Override
  public int getNextScene() { return -1; }
  public void setup() {
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    drawManager.drawing();
    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
