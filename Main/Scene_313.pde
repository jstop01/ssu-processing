// 오누이가 새 동아줄과 썩은 동아줄을 선택하는 상황
public class Scene_313 extends BaseScene {
  // 썩은 동아줄 분기
  @Override
  public int getNextScene() { return 314; }

  // 새 동아줄 분기
  // @Override
  // public int getNextScene() { return 319; }
  
  public void setup() {
    println("Scene_313 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_313 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_313 : mousePressed");
  }
}
