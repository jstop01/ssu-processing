public class Scene_215 extends BaseScene {
  public void setup() {
    println("Scene_215 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_215 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_215 : mousePressed");
  }
}
