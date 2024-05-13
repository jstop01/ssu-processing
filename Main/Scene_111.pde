public class Scene_111 extends BaseScene {
  public void setup() {
    println(Scene_111 : setup);
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    //println(Scene_111 : draw);
    
    popStyle();
  }
  
  public void mousePressed() {
    println(Scene_111 : mousePressed);
  }
}

