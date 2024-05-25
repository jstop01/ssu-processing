public class Scene_321 extends BaseScene {
  @Override
  public int getNextScene() { return 322; }
  public void setup() {
    println("Scene_321 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_321 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
