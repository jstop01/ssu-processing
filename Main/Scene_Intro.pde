public class Scene_Intro extends BaseScene {
  private Button sceneButton1;
  private Button sceneButton2;
  private Button sceneButton3;
  
  public void setup() {
    println("Scene_Intro : setup");
    sceneButton1 = new Button();
    sceneButton1.text = "Scene1";
    sceneButton1.position = new PVector(100, 100);
    sceneButton1.size = new PVector(200, 100);
    
    sceneButton2 = new Button();
    sceneButton2.text = "Scene2";
    sceneButton2.position = new PVector(350, 100);
    sceneButton2.size = new PVector(200, 100);
    
    sceneButton3 = new Button();
    sceneButton3.text = "Scene3";
    sceneButton3.position = new PVector(600, 100);
    sceneButton3.size = new PVector(200, 100);

    Rock rock = new Rock(500,500,120,100,2);
    drawManager.addDrawable(rock);
    Rock rock2 = new Rock(600,600,120,100,1);
    drawManager.addDrawable(rock2);
    // drawManager.removeDrawable(rock2);
  }
 
  public void draw() {
    pushStyle();
    if (sceneButton1.drawAndCheckClick()) {
      sceneManager.loadScene(new Scene_1());
    }
    
    if (sceneButton2.drawAndCheckClick()) {
      sceneManager.loadScene(new Scene_2());
    }
    
    if (sceneButton3.drawAndCheckClick()) {
      sceneManager.loadScene(new Scene_301());
    }
    println("Scene_Intro : draw");
    
    popStyle();

    drawManager.drawing();
  }
  
  public void mousePressed() {
    println("Scene_Intro : mousePressed");
    //sceneManager.loadScene(new Scene_1());
    // DrawManager
    drawManager.mousePressed();
  }
}
