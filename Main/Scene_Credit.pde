public class Scene_Credit extends BaseScene {
  @Override
  public int getNextScene() { return -1; }
  
  
  public void setup() {
    println("Scene_Credit : setup");
  }
 
  public void draw() {
    pushStyle();
    println("Scene_Credit : draw");
    
    popStyle();

    drawManager.drawing();
  }
  
  public void mousePressed() {
    println("Scene_Credit : mousePressed");
    sceneManager.loadScene(new Scene_Intro());
  }
}
