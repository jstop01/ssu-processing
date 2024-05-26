public class Scene_310 extends BaseScene {
  @Override
  public int getNextScene() { return 311; }
  public void setup() {
    println("Scene_310 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_310 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
