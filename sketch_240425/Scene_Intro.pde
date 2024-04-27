public class Scene_Intro extends BaseScene {
  
  Button sceneButton1;
  Button sceneButton2;
  Button sceneButton3;
  
  public void setup() {
    println("Scene_Intro : setup");
    sceneButton1 = new Button();
    sceneButton1.position = new PVector(100, 100);
    sceneButton1.size = new PVector(100, 50);
    
    //sceneButton2 = new Button();
    //sceneButton2.position = new PVector(100, 100);
    //sceneButton2.size = new PVector(100, 50);
    
    //sceneButton3 = new Button();
    //sceneButton3.position = new PVector(100, 100);
    //sceneButton3.size = new PVector(100, 50);
  }
 
  public void draw() {
    pushStyle();
    
    if (sceneButton1.drawAndCheckClick()) {
    }
    //println("Scene_Intro : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_Intro : mousePressed");
    //sceneManager.loadScene(new Scene_1());
  }
}
