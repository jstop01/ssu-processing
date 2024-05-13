public class Scene_220 extends BaseScene {
  public void setup() {
    println(Scene_220 : setup);
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    //println(Scene_220 : draw);
    
    popStyle();
  }
  
  public void mousePressed() {
    println(Scene_220 : mousePressed);
  }
}

