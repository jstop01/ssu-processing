public class Scene_CameraManagerTest extends BaseScene {
  @Override
  public int getNextScene() { return -1; }
  ShapeObject tiger;
  public void setup() {
    println("Scene_CameraManagerTest : setup");
    tiger = objectFactory.create(ObjectType.tiger_mom, ObjectPoseType.back);
    tiger.setPosition(700, 500);
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
  
  public void mousePressed() {
    println("Scene_CameraManagerTest : mousePressed");
    cameraManager.zoom(new PVector(mouseX, mouseY), 2.0, 5000);
  }
}
