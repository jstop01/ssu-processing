public class Scene_324 extends BaseScene {
  public void setup() {
    println("Scene_324 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_324 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_324 : mousePressed");
  }
}
