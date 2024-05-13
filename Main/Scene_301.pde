public class Scene_301 extends BaseScene {
  public void setup() {
    println(Scene_301 : setup);
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    //println(Scene_301 : draw);
    
    popStyle();
  }
  
  public void mousePressed() {
    println(Scene_301 : mousePressed);
  }
}

