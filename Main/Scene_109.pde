public class Scene_109 extends BaseScene {
  @Override
  public int getNextScene() { return 110; }
  public void setup() {
    println("Scene_109 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_109 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_109 : mousePressed");
  }
}
