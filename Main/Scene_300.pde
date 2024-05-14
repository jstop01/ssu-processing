public class Scene_300 extends BaseScene {
  public void setup() {
    println("Scene_300 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_300 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_300 : mousePressed");
  }
}

