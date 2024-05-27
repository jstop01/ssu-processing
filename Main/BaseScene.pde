public abstract class BaseScene {
  public DrawManager drawManager = new DrawManager();
  public SoundManager soundManager = new SoundManager();
  public AnimationManager animationManager = new AnimationManager();
  public EffectManager effectManager = new EffectManager();
  public UiManager uiManager = new UiManager();

  public void startAnimation(BaseAnimation animation) {
    animationManager.startAnimation(animation);
  }
  
  // 씬이 최초로 생성되는 시점에 1회 호출됨.
  public abstract void setup();
  
  public abstract void draw();

  public abstract int getNextScene();
  public void loadNextScene() {
    int sceneNumber = getNextScene();
    if (sceneNumber != -1) {
      sceneManager.loadScene(scenes.createScene(sceneNumber));
    } else {
      println("다음 씬이 없거나 매핑이 안되어있습니다.");
    }
  }
  public abstract int getPreviousScene();
  public void loadPreviousScene() {
    int sceneNumber = getPreviousScene();
    if (sceneNumber != -1) {
      sceneManager.loadScene(scenes.createScene(sceneNumber));
    } else {
      println("이전 씬이 없거나 매핑이 안되어있습니다.");
    }
  }
  
  public void mousePressed() {
    println("BaseScene: mousePressed");
  }

  public void keyPressed() {
    println("BaseScene: mousePressed");
  }
}
