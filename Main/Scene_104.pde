public class Scene_104 extends BaseScene {
  public void setup() {
    println("Scene_104 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_104 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_104 : mousePressed");
  }
}

