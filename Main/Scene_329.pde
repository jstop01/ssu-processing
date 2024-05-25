public class Scene_329 extends BaseScene {
  @Override
  public int getNextScene() { return 330; }
  public void setup() {
    println("Scene_329 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_329 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_329 : mousePressed");
  }
}
