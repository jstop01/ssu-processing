public class Scene_306 extends BaseScene {
  @Override
  public int getNextScene() { return 307; }
  public void setup() {
    println("Scene_306 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_306 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
