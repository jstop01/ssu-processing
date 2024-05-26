public abstract class BaseScene {
  public DrawManager drawManager = new DrawManager();
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
    }
  }
  public abstract int getPreviousScene();
  public void loadPreviousScene() {
    int sceneNumber = getPreviousScene();
    if (sceneNumber != -1) {
      sceneManager.loadScene(scenes.createScene(sceneNumber));
    }
  }
  
  public void mousePressed() {
    println("BaseScene: mousePressed");
  }
}
