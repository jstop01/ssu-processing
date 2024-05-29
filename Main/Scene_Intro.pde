public class Scene_Intro extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return -1; }
  private Button[] sceneButtons;

  private Button sceneButton1;
  private Button sceneButton2;
  private Button sceneButton3;
  private Button sceneButton4;
  
  public void setup() {
    sceneButtons = createGridButtons(scenes.getSceneNames(), 20, 3, 0, 0, 500, height);

    sceneButton1 = new Button();
    sceneButton1.text = "Scene1";
    sceneButton1.position = new PVector(600, 100);
    sceneButton1.size = new PVector(200, 100);
    
    sceneButton2 = new Button();
    sceneButton2.text = "Scene2";
    sceneButton2.position = new PVector(600, 200);
    sceneButton2.size = new PVector(200, 100);
    
    sceneButton3 = new Button();
    sceneButton3.text = "Scene3";
    sceneButton3.position = new PVector(600, 300);
    sceneButton3.size = new PVector(200, 100);

    sceneButton4 = new Button();
    sceneButton4.text = "Scene_Ending";
    sceneButton4.position = new PVector(600, 400);
    sceneButton4.size = new PVector(200, 100);
  }
 
  public void draw() {
    pushStyle();
    for (int i = 0; i < sceneButtons.length; i++) {
      if (sceneButtons[i].drawAndCheckClick()) {
        sceneManager.loadScene(scenes.createScene(scenes.sceneNumbers[i]));
      }
    }
    if (sceneButton1.drawAndCheckClick()) {
      sceneManager.loadScene(new Scene_101());
    }
    
    if (sceneButton2.drawAndCheckClick()) {
      sceneManager.loadScene(new Scene_201());
    }
    
    if (sceneButton3.drawAndCheckClick()) {
      sceneManager.loadScene(new Scene_301());
    }


    if (sceneButton4.drawAndCheckClick()) {
      sceneManager.loadScene(new Scene_Ending());
    }
    println("Scene_Intro : draw");
    
    popStyle();

    drawManager.drawing();
  }
  
  public void mousePressed() {
    drawManager.mousePressed();
  }
}
