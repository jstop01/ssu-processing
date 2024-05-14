public class Scene_308 extends BaseScene {
  public void setup() {
    println("Scene_308 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_308 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_308 : mousePressed");
  }
}

