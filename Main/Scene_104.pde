public class Scene_104 extends BaseScene {
  @Override
  public int getNextScene() { return 105; }

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
