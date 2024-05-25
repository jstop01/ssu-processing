public class Scene_331 extends BaseScene {
  public void setup() {
    println("Scene_331 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_331 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_331 : mousePressed");
  }
}
