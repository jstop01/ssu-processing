public class Scene_327 extends BaseScene {
  @Override
  public int getNextScene() { return 328; }
  public void setup() {
    println("Scene_327 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_327 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
