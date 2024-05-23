public abstract class BaseScene {

  public DrawManager drawManager = new DrawManager();
  public AnimationManager animationManager = new AnimationManager();
  public EffectManager effectManager = new EffectManager();

  public void startAnimation(BaseAnimation animation) {
    animationManager.startAnimation(animation);
  }

  // 씬이 최초로 생성되는 시점에 1회 호출됨.
  public abstract void setup();
  
  public abstract void draw();
  
  public void mousePressed() {
    println("BaseScene: mousePressed");
  }
}
