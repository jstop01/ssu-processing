public class Scene_2 extends BaseScene {
  public void setup() {
    println("Scene_2 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(0, 255, 0);
    //println("Scene_2 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_2 : mousePressed");
  }
}
