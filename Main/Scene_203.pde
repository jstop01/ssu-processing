public class Scene_203 extends BaseScene {
  public void setup() {
    println("Scene_203 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_203 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_203 : mousePressed");
  }
}

