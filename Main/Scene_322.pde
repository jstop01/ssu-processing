public class Scene_322 extends BaseScene {
  public void setup() {
    println("Scene_322 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_322 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_322 : mousePressed");
  }
}
