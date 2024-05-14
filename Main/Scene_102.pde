public class Scene_102 extends BaseScene {
  public void setup() {
    println("Scene_102 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_102 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_102 : mousePressed");
  }
}

