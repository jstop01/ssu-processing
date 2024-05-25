public class Scene_320 extends BaseScene {
  @Override
  public int getNextScene() { return 321; }
  public void setup() {
    println("Scene_320 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_320 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
