public class Scene_322 extends BaseScene {
  @Override
  public int getNextScene() { return 323; }
  public void setup() {
    println("Scene_322 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_322 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
