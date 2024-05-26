public class Scene_102 extends BaseScene {
  @Override
  public int getNextScene() { return 103; }

  public void setup() {
    Drawable ground = new Ground(-1, #DAC4A2);
    drawManager.addDrawable(ground);

    Drawable house = objectFactory.create(BackgroundType.초가집);
    house.setPosition(width / 2, height / 2 - 20);
    house.scale.x = 0.15;
    house.scale.y = 0.15;
    drawManager.addDrawable(house);

    Drawable cloud = objectFactory.create(BackgroundType.구름2);
    cloud.setPosition(250, 80);
    cloud.scale.x = 0.04;
    cloud.scale.y = 0.04;
    drawManager.addDrawable(cloud);

    // TODO: 배경 - 나무, 산, 짚신 추가
    uiManager.dialogUi.push(uiManager.getDialogDataById("102001"));
  }
 
  public void draw() {
    pushStyle();

    background(#C1E7F5);
    drawManager.drawing();

    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
