public class Scene_110 extends BaseScene {
  public void setup() {
    println("Scene_110 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_110 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_110 : mousePressed");
  }
}