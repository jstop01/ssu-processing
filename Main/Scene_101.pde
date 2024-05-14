public class Scene_101 extends BaseScene {
  public void setup() {
    println("Scene_101 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_101 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_101 : mousePressed");
  }
}

