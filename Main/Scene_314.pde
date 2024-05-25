public class Scene_314 extends BaseScene {
  @Override
  public int getNextScene() { return 315; }
  public void setup() {
    println("Scene_314 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_314 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
