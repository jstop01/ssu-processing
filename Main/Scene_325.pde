public class Scene_325 extends BaseScene {
  public void setup() {
    println("Scene_325 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_325 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_325 : mousePressed");
  }
}

