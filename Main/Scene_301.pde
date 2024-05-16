public class Scene_301 extends BaseScene {
  ShapeObject tiger;

  public void setup() {
    tiger = objectFactory.create(ObjectType.tiger_mom, ObjectPoseType.back);
    tiger.position.x = 700;
    tiger.position.y = 500;
    tiger.size.x = 0;
    tiger.size.y = 0;
    tiger.scale.x = 0.4;
    tiger.scale.y = 0.4;

    drawManager.addDrawable(new Ground(-1, #BF763E));
  }

  public void draw() {
    pushStyle();

    background(#FFFFFF);
    drawManager.drawing();
    tiger.draw();

    popStyle();
  }
  
  public void mousePressed() {}
}
