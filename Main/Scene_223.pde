public class Scene_223 extends BaseScene {
  public void setup() {
    println("Scene_223 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_223 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_223 : mousePressed");
  }
}
