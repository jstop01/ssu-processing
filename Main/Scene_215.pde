public class Scene_215 extends BaseScene {
  @Override
  public int getNextScene() { return 216; }
  public void setup() {
    println("Scene_215 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_215 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
