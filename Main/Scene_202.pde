public class Scene_202 extends BaseScene {
  public void setup() {
    println(Scene_202 : setup);
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    //println(Scene_202 : draw);
    
    popStyle();
  }
  
  public void mousePressed() {
    println(Scene_202 : mousePressed);
  }
}

