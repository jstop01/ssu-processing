public class Scene_ending extends BaseScene {
  public void setup() {
    println(Scene_ending : setup);
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    //println(Scene_ending : draw);
    
    popStyle();
  }
  
  public void mousePressed() {
    println(Scene_ending : mousePressed);
  }
}

