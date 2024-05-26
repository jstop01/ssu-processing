public class Scene_SpriteAnimationTest extends BaseScene {
  @Override
  public int getNextScene() { return -1; }
  private SpriteAnimation testAnim;
  public void setup() {
    var images = new PImage[] {
      loadImage("res/test/SpriteAnim_1.png"),
      loadImage("res/test/SpriteAnim_2.png"),
      loadImage("res/test/SpriteAnim_3.png"),
      loadImage("res/test/SpriteAnim_4.png")
    };
    testAnim = new SpriteAnimation(images);
    testAnim.setPosition(500, 500);
    testAnim.playNTimes(1, 10);

    drawManager.addDrawable(testAnim);
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    drawManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    
  }
}
