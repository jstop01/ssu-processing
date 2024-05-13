public class Scene_210 extends BaseScene {
  public void setup() {
    println(Scene_210 : setup);
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    //println(Scene_210 : draw);
    
    popStyle();
  }
  
  public void mousePressed() {
    println(Scene_210 : mousePressed);
  }
}

