public class Scene_200 extends BaseScene {
  public void setup() {
    println(Scene_200 : setup);
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    //println(Scene_200 : draw);
    
    popStyle();
  }
  
  public void mousePressed() {
    println(Scene_200 : mousePressed);
  }
}

