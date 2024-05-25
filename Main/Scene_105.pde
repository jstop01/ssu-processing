public class Scene_105 extends BaseScene {
  @Override
  public int getNextScene() { return 106; }
  public void setup() {
    var boy = objectFactory.create(ObjectType.boy, ObjectPoseType.front);
    boy.setPosition(750, 900);
    boy.setScale(2f, 2f);
    drawManager.addDrawable(boy);
    
    var girl = objectFactory.create(ObjectType.girl, ObjectPoseType.front);
    girl.setPosition(400, 800);
    girl.setScale(2f, 2f);
    drawManager.addDrawable(girl);
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    drawManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_105 : mousePressed");
  }
}
