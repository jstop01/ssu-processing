// 호랑이에게 팥떡이나 쑥떡을 주는 게임
public class Scene_204 extends BaseScene {
  // 팥 떡 분기
  @Override
  public int getNextScene() { return 205; }

  // 쑥 떡 분기
  //public int getNextScene() { return 218; }
  public void setup() {
    println("Scene_204 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_204 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_204 : mousePressed");
  }
}
