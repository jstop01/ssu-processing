public class Scene_309 extends BaseScene {
  @Override
  public int getNextScene() { return 310; }
  public void setup() {
    println("Scene_309 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_309 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_309 : mousePressed");
  }
}
