public class Scene_212 extends BaseScene {
  public void setup() {
    println("Scene_212 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_212 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_212 : mousePressed");
  }
}
