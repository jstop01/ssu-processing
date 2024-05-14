public class Scene_303 extends BaseScene {
  public void setup() {
    println("Scene_303 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_303 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_303 : mousePressed");
  }
}

