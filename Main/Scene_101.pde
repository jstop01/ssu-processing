public class Scene_101 extends BaseScene {
  @Override
  public int getNextScene() { return 102; }

  public void setup() {
    var door = objectFactory.create(BackgroundType.대문2);
    door.setPosition(width / 2, height / 2);
    door.scale.x = 0.15625;
    door.scale.y = 0.15625;
    
    drawManager.addDrawable(door);
  }
 
  public void draw() {
    pushStyle();
    
    drawManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
