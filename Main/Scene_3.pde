public class Scene_3 extends BaseScene {
  public void setup() {
    println("Scene_3 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(0, 0, 255);
    println("Scene_3 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_3 : mousePressed");
  }
}
