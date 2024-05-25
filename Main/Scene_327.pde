public class Scene_327 extends BaseScene {
  public void setup() {
    println("Scene_327 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_327 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_327 : mousePressed");
  }
}
