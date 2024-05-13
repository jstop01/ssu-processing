public class Scene_204 extends BaseScene {
  public void setup() {
    println(Scene_204 : setup);
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    //println(Scene_204 : draw);
    
    popStyle();
  }
  
  public void mousePressed() {
    println(Scene_204 : mousePressed);
  }
}

