public class Scene_102 extends BaseScene {
  @Override
  public int getPreviousScene() { return 102; }

  @Override
  public int getNextScene() { return 103; }

  public void setup() {

    uiManager.dialogUi.enqueueAll(uiManager.getDialogForScene(this));
    uiManager.dialogUi.next();

    loadBackground("3", drawManager);

    Drawable ground = new Ground(-1, #DAC4A2);
    drawManager.addDrawable(ground);

    Drawable house = objectFactory.create("res/images/object/hut_front.png");
    house.setPosition(width / 2, height / 2 - 20);
    house.setScale(0.15, 0.15);
    drawManager.addDrawable(house);

    Drawable cloud = objectFactory.create("res/images/object/cloud_1.png");
    cloud.setPosition(250, 80);
    cloud.setScale(0.04, 0.04);
    drawManager.addDrawable(cloud);

    Drawable mountain = new Mountain(600, 250, -2);
    drawManager.addDrawable(mountain);

    Drawable shoes1 = objectFactory.create("res/images/object/shoes.png");
    shoes1.setPosition(698, 592);
    shoes1.setScale(0.4, 0.4);
    drawManager.addDrawable(shoes1);

    Drawable shoes2 = objectFactory.create("res/images/object/shoes.png");
    shoes2.setPosition(774, 587);
    shoes2.setScale(-0.25, 0.25);
    drawManager.addDrawable(shoes2);

    Drawable shoes3 = objectFactory.create("res/images/object/shoes.png");
    shoes3.setPosition(846, 583);
    shoes3.setScale(0.3, 0.3);
    drawManager.addDrawable(shoes3);

    // TODO: 배경 - 나무 추가

    soundManager.playOnce("res/sound/effect/102_웃음소리.mp3");
  }
 
  public void draw() {
    pushStyle();

    background(colors.day_sky);
    drawManager.drawing();

    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    // 테스트로 fade 연출 없애봄
    loadNextScene(false);
  }
}
