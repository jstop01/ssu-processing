public class Scene_1 extends BaseScene {
  public void setup() {
    println("Scene_1 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    //println("Scene_1 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_1 : mousePressed");
  }
}
