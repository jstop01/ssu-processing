public class Scene_108 extends BaseScene {
  public void setup() {
    println(Scene_108 : setup);
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    //println(Scene_108 : draw);
    
    popStyle();
  }
  
  public void mousePressed() {
    println(Scene_108 : mousePressed);
  }
}

