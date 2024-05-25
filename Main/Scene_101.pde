public class Scene_101 extends BaseScene {
  @Override
  public int getNextScene() { return 102; }

  public void setup() {
    var door = objectFactory.create(BackgroundType.대문);
    door.setPosition(800, 300);
    door.scale.x = 0.8;
    door.scale.y = 0.8;
    

    drawManager.addDrawable(door);
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    drawManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_101 : mousePressed");
  }
}
