public class Scene_103 extends BaseScene {
  public void setup() {
    var boy = objectFactory.create(ObjectType.boy, ObjectPoseType.front);
    boy.setPosition(500, 400);
    boy.setScale(0.3f, 0.3f);
    drawManager.addDrawable(boy);
    
    var girl = objectFactory.create(ObjectType.girl, ObjectPoseType.front);
    girl.setPosition(350, 450);
    girl.setScale(0.3f, 0.3f);
    drawManager.addDrawable(girl);
    
    var mom = objectFactory.create(ObjectType.mom, ObjectPoseType.front);
    mom.setPosition(650, 450);
    mom.setScale(0.3f, 0.3f);
    drawManager.addDrawable(mom);
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    drawManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_103 : mousePressed");
  }
}
