public class Scene_104 extends BaseScene {
  public void setup() {
    
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    drawManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_104 : mousePressed");
  }
}
