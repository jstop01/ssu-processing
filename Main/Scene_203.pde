
public class Scene_203 extends BaseScene {
  @Override
  public int getNextScene() { return 204; }
  public void setup() {
    println("Scene_203 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_203 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
