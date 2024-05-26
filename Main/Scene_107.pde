public class Scene_107 extends BaseScene {
  @Override
  public int getNextScene() { return 108; }
  public void setup() {
    println("Scene_107 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_107 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
