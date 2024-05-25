public class Scene_318 extends BaseScene {
  public void setup() {
    println("Scene_318 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_318 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_318 : mousePressed");
  }
}
