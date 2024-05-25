public class Scene_312 extends BaseScene {
  @Override
  public int getNextScene() { return 313; }
  public void setup() {
    println("Scene_312 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_312 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_312 : mousePressed");
  }
}
