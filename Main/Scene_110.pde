public class Scene_110 extends BaseScene {
  @Override
  public int getNextScene() { return 111; }
  public void setup() {
    println("Scene_110 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_110 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
