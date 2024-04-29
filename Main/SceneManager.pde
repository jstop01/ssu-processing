final SceneManager sceneManager = new SceneManager();

public class SceneManager {
  public BaseScene getCurrentScene() { return currentScene; }
  private BaseScene currentScene;
  
  public void loadScene(BaseScene scene) {
    scene.setup();
    currentScene = scene;
    currentScene.setup();
  }
}
