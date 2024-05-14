public class Scene_323 extends BaseScene {
  public void setup() {
    println("Scene_323 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_323 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_323 : mousePressed");
  }
}

