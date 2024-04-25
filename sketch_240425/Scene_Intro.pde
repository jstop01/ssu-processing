public class Scene_Intro extends BaseScene {
  public void setup() {
    println("Scene_Intro : setup");
  }
 
  public void draw() {
    //println("Scene_Intro : draw");
  }
  
  public void mousePressed() {
    println("Scene_Intro : mousePressed");
    sceneManager.loadScene(new Scene_1());
  }
}
