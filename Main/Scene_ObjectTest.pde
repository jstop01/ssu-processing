public class Scene_ObjectTest extends BaseScene {
  ShapeObject tiger;
  public void setup() {
    println("Scene_ObjectTest : setup");
    tiger = objectFactory.create(ObjectType.tiger, ObjectPoseType.front);
    tiger.position.x = 200;
    tiger.position.y = 200;
    tiger.size.x = 0;
    tiger.size.y = 0;
    tiger.scale.x = 0.2;
    tiger.scale.y = 0.2;
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    //println("Scene_ObjectTest : draw");
    tiger.draw();
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_ObjectTest : mousePressed");
  }
}
