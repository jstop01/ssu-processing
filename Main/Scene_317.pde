public class Scene_317 extends BaseScene {
  @Override
  public int getNextScene() { return 318; }
  public void setup() {
    println("Scene_317 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_317 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
