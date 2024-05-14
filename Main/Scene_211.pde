public class Scene_211 extends BaseScene {
  public void setup() {
    println("Scene_211 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_211 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_211 : mousePressed");
  }
}

