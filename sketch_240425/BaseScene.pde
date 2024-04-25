public abstract class BaseScene {
  // 씬이 최초로 생성되는 시점에 1회 호출됨.
  public abstract void setup();
  
  public abstract void draw();
  
  public void mousePressed() {
    println("BaseScene: mousePressed");
  }
}
