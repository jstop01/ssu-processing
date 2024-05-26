public class Scene_323 extends BaseScene {
  @Override
  public int getNextScene() { return 324; }
  public void setup() {
    println("Scene_323 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_323 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
