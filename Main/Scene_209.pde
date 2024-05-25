public class Scene_209 extends BaseScene {
  @Override
  public int getNextScene() { return 210; }
  public void setup() {
    println("Scene_209 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_209 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_209 : mousePressed");
  }
}
