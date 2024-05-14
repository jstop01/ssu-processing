public class Scene_105 extends BaseScene {
  public void setup() {
    println("Scene_105 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_105 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_105 : mousePressed");
  }
}

