public class Scene_315 extends BaseScene {
  @Override
  public int getNextScene() { return 316; }
  public void setup() {
    println("Scene_315 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_315 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_315 : mousePressed");
  }
}
