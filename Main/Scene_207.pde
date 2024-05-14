public class Scene_207 extends BaseScene {
  public void setup() {
    println("Scene_207 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_207 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_207 : mousePressed");
  }
}

