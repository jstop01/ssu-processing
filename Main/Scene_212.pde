public class Scene_212 extends BaseScene {
  @Override
  public int getNextScene() { return 213; }
  public void setup() {
    println("Scene_212 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_212 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
