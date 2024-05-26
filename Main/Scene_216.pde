public class Scene_216 extends BaseScene {
  @Override
  public int getNextScene() { return 217; }
  public void setup() {
    println("Scene_216 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_216 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
