// 오누이 썩은 동아줄 분기, 313으로 다시 돌아가야 함.
public class Scene_318 extends BaseScene {
  @Override
  public int getNextScene() { return 313; }
  public void setup() {
    println("Scene_318 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_318 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
