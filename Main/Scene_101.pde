public class Scene_101 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 102; }

  public void setup() {
    var door = objectFactory.create("res/images/object/door_2.png");
    door.setPosition(width / 2, height / 2);
    door.setScale(0.15625, 0.15625);
    drawManager.addDrawable(door);

    var hand = objectFactory.create("res/images/character/knock_hand.png");
    hand.setPosition(width / 2 + 200, height / 2);
    hand.setScale(0.5, 0.5);
    drawManager.addDrawable(hand);
  }
 
  public void draw() {
    pushStyle();
    
    drawManager.drawing();
    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
