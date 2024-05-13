public class Scene_222 extends BaseScene {
  public void setup() {
    println(Scene_222 : setup);
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    //println(Scene_222 : draw);
    
    popStyle();
  }
  
  public void mousePressed() {
    println(Scene_222 : mousePressed);
  }
}

