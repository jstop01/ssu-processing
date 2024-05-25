public class Scene_202 extends BaseScene {
  @Override
  public int getNextScene() { return 203; }
  public void setup() {
    println("Scene_202 : setup");
    drawManager.addDrawable(new TornWindow(100, 100, 180, 300, 0));
  }
 
  public void draw() {
    pushStyle();
    
    background(255);
    drawManager.drawing();
    println("Scene_202 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_202 : mousePressed");
  }
}
