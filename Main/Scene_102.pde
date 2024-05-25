public class Scene_102 extends BaseScene {
  @Override
  public int getNextScene() { return 103; }

  public void setup() {

    var 구름1 = new Cloud_Normal(600, -100);
    drawManager.addDrawable(구름1);

    var 구름2 = new Cloud_Small(300, -150);
    drawManager.addDrawable(구름2);


    var 구름3 = new Cloud_VerySmall(100, 100);
    drawManager.addDrawable(구름3);

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
