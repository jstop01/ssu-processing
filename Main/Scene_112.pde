public class Scene_112 extends BaseScene {
  @Override
  public int getNextScene() { return 113; }
  public void setup() {
    println("Scene_112 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_112 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
