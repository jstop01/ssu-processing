public class Scene_103 extends BaseScene {
  public void setup() {
    println(Scene_103 : setup);
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    //println(Scene_103 : draw);
    
    popStyle();
  }
  
  public void mousePressed() {
    println(Scene_103 : mousePressed);
  }
}

