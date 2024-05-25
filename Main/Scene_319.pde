public class Scene_319 extends BaseScene {
  @Override
  public int getNextScene() { return 320; }
  public void setup() {
    println("Scene_319 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_319 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
