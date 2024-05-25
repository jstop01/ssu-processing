// 호랑이가 썩은 동아줄을 고르는 미니게임
public class Scene_324 extends BaseScene {
  @Override
  public int getNextScene() { return 325; }
  public void setup() {
    println("Scene_324 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_324 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_324 : mousePressed");
  }
}
