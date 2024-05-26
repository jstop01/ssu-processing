public class Scene_205 extends BaseScene {
  @Override
  public int getNextScene() { return 206; }
  public void setup() {
    println("Scene_205 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_205 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
