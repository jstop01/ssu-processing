public class Scene_303 extends BaseScene {
  @Override
  public int getNextScene() { return 304; }
  public void setup() {
    println("Scene_303 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_303 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
