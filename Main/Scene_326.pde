public class Scene_326 extends BaseScene {
  @Override
  public int getNextScene() { return 327; }
  public void setup() {
    println("Scene_326 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_326 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_326 : mousePressed");
  }
}
