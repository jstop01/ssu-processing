public class Scene_328 extends BaseScene {
  public void setup() {
    println("Scene_328 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_328 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_328 : mousePressed");
  }
}
