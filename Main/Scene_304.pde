public class Scene_304 extends BaseScene {
  @Override
  public int getNextScene() { return 305; }
  public void setup() {
    println("Scene_304 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_304 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_304 : mousePressed");
  }
}
