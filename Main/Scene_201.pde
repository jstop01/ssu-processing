public class Scene_201 extends BaseScene {
  public void setup() {
    println("Scene_201 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_201 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_201 : mousePressed");
  }
}

