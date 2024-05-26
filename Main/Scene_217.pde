public class Scene_217 extends BaseScene {
  @Override
  public int getNextScene() { return -1; }
  public void setup() {
    println("Scene_217 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_217 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
