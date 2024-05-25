public class Scene_221 extends BaseScene {
  @Override
  public int getNextScene() { return 222; }
  public void setup() {
    println("Scene_221 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_221 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_221 : mousePressed");
  }
}
