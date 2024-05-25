public class Scene_311 extends BaseScene {
  @Override
  public int getNextScene() { return 312; }
   ShapeObject branch;
   ShapeObject branch2; // 나중엔 차피 하나의 이미지로 퉁칠거라 지금만 대충 가라처리합니다
  
  public void setup() {
    println("Scene_311 : setup");
    branch = objectFactory.create(BackgroundType.무서운나무);
    branch.setPosition(1700,0);
    branch.scale.x = 0.2f;
    branch.scale.y = 0.2f;

    branch2 = objectFactory.create(ObjectType.tiger,ObjectPoseType.lay);
    branch2.setPosition(640,700);
    branch2.scale.x = 1f;
    branch2.scale.y = 0.4f;
  }
 
  public void draw() {
    pushStyle();
    
    background(#040348);
    println("Scene_311 : draw");
    branch.draw();
    branch2.draw();

    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_311 : mousePressed");
  }
}
