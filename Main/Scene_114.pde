public class Scene_114 extends BaseScene {
  public void setup() {
    println("Scene_114 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_114 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_114 : mousePressed");
  }
}

