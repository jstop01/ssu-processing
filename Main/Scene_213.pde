public class Scene_213 extends BaseScene {
  @Override
  public int getNextScene() { return 214; }
  public void setup() {
    println("Scene_213 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_213 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
