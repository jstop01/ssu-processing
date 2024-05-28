public class Scene_102 extends BaseScene {
  @Override
  public int getPreviousScene() { return 102; }

  @Override
  public int getNextScene() { return 103; }

  public void setup() {
    Drawable ground = new Ground(-1, #DAC4A2);
    drawManager.addDrawable(ground);

    Drawable house = objectFactory.create(BackgroundType.초가집);
    house.setPosition(width / 2, height / 2 - 20);
    house.setScale(0.15, 0.15);
    drawManager.addDrawable(house);

    Drawable cloud = objectFactory.create(BackgroundType.구름2);
    cloud.setPosition(250, 80);
    cloud.setScale(0.04, 0.04);
    drawManager.addDrawable(cloud);

    Drawable mountain = new Mountain(600, 250, -2);
    drawManager.addDrawable(mountain);

    Drawable shoes1 = objectFactory.create(BackgroundType.짚신);
    shoes1.setPosition(698, 592);
    shoes1.setScale(0.4, 0.4);
    drawManager.addDrawable(shoes1);

    Drawable shoes2 = objectFactory.create(BackgroundType.짚신);
    shoes2.setPosition(774, 587);
    shoes2.setScale(-0.25, 0.25);
    drawManager.addDrawable(shoes2);

    Drawable shoes3 = objectFactory.create(BackgroundType.짚신);
    shoes3.setPosition(846, 583);
    shoes3.setScale(0.3, 0.3);
    drawManager.addDrawable(shoes3);

    // TODO: 배경 - 나무 추가
    uiManager.dialogUi.set(uiManager.getDialogDataById("102001"));
  }
 
  public void draw() {
    pushStyle();

    background(#C1E7F5);
    drawManager.drawing();

    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    // 테스트로 fade 연출 없애봄
    loadNextScene(false);
  }
}
