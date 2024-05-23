public class Scene_AnimationTest extends BaseScene {
  private SpriteAnimation testAnim;
  public void setup() {
    var boy = objectFactory.create(ObjectType.boy, ObjectPoseType.front);
    boy.setPosition(350, 600);
    boy.setScale(1f, 1f);
    drawManager.addDrawable(boy);

    var moveAnim = new MoveAnimation(boy);
    moveAnim.easeType = EaseType.InOutQuad;
    moveAnim.destX = boy.abstractX + 500;
    moveAnim.destY = boy.abstractY + 300;
    moveAnim.duration = 3;
    moveAnim.repeatCount = 2;
    startAnimation(moveAnim);

    var girl = objectFactory.create(ObjectType.girl, ObjectPoseType.front);
    girl.setPosition(350, 600);
    girl.setScale(0.5f, 0.5f);
    drawManager.addDrawable(girl);

    var scaleAnim = new ScaleAnimation(girl);
    scaleAnim.easeType = EaseType.InOutBounce;
    scaleAnim.destX = 2;
    scaleAnim.destY = 2;
    scaleAnim.duration = 3;
    scaleAnim.repeatCount = 1;
    startAnimation(scaleAnim);
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    drawManager.drawing();
    animationManager.update();
    
    popStyle();
  }
  
  public void mousePressed() {
    
  }
}