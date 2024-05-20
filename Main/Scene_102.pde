public class Scene_102 extends BaseScene {
  public void setup() {
    var 초가집 = objectFactory.create(BackgroundType.초가집);
    초가집.setPosition(550, 300);
    초가집.scale.x = 0.15;
    초가집.scale.y = 0.15;
    drawManager.addDrawable(초가집);

    var 나무1 = objectFactory.create(BackgroundType.무서운나무); // 고쳐야 함
    나무1.setPosition(1000, 300);
    나무1.scale.x = 0.04;
    나무1.scale.y = 0.04;
    drawManager.addDrawable(나무1);
    
    var 나무2 = objectFactory.create(BackgroundType.무서운나무); // 고쳐야 함
    나무2.setPosition(1200, 300);
    나무2.scale.x = 0.04;
    나무2.scale.y = 0.04;
    drawManager.addDrawable(나무2);

    var 구름1 = objectFactory.create(BackgroundType.구름1); // 고쳐야 함
    구름1.setPosition(200, 50);
    구름1.scale.x = 0.08;
    구름1.scale.y = 0.08;
    drawManager.addDrawable(구름1);

    var 구름2 = objectFactory.create(BackgroundType.구름2); // 고쳐야 함
    구름2.setPosition(100, 150);
    구름2.scale.x = 0.06;
    구름2.scale.y = 0.06;
    drawManager.addDrawable(구름2);
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    drawManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_102 : mousePressed");
  }
}
