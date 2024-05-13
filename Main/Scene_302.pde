public class Scene_302 extends BaseScene {
  public void setup() {
    println(Scene_302 : setup);
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    //println(Scene_302 : draw);
    
    popStyle();
  }
  
  public void mousePressed() {
    println(Scene_302 : mousePressed);
  }
}

