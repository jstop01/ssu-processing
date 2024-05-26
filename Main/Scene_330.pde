public class Scene_330 extends BaseScene {
  @Override
  public int getNextScene() { return -1; }
  public void setup() {
    println("Scene_330 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_330 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    sceneManager.loadScene(new Scene_Credit());
  }
}
