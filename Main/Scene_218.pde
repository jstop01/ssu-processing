public class Scene_218 extends BaseScene {
  public void setup() {
    println("Scene_218 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_218 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_218 : mousePressed");
  }
}
