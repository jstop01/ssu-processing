public class Scene_333 extends BaseScene {
  public void setup() {
    println(Scene_333 : setup);
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    //println(Scene_333 : draw);
    
    popStyle();
  }
  
  public void mousePressed() {
    println(Scene_333 : mousePressed);
  }
}

