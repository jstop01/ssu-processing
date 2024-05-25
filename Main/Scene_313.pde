public class Scene_313 extends BaseScene {
  public void setup() {
    println("Scene_313 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_313 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_313 : mousePressed");
  }
}
