void Scene_103_mountain_and_ground_setup(DrawManager drawManager) {
  var mountain = new Mountain(width/2, 0);
  drawManager.addDrawable(mountain);

  Drawable ground = new Ground(0, 300, width, height, 0, #DAC4A2);
  drawManager.addDrawable(ground);
}

public class Scene_103 extends BaseScene {
  @Override
  public int getPreviousScene() { return 103; }

  @Override
  public int getNextScene() { return 104; }
  public void setup() {
    uiManager.dialogUi.enqueueAll(uiManager.getDialogForScene(this));
    uiManager.dialogUi.next();

    Scene_103_mountain_and_ground_setup(drawManager);

    var 집 = objectFactory.create("res/images/object/hut_front.png");
    집.setPosition(700, 200);
    집.setScale(0.1f, 0.1f);
    drawManager.addDrawable(집);

    var girl = objectFactory.create(CharacterType.girl, CharacterPoseType.smile);
    girl.setPosition(450, 550);
    girl.setScale(0.3f, 0.3f);
    drawManager.addDrawable(girl);

    var boy = objectFactory.create(CharacterType.boy, CharacterPoseType.smile);
    boy.setPosition(500, 400);
    boy.setScale(0.3f, 0.3f);
    drawManager.addDrawable(boy);
    
    
    var mom = objectFactory.create(CharacterType.mom, CharacterPoseType.front_ricecake);
    mom.setPosition(800, 450);
    mom.setScale(0.3f, 0.3f);
    drawManager.addDrawable(mom);

    var 절구 = objectFactory.create("res/images/object/morter.png");
    절구.setPosition(width / 2, 450);
    절구.setScale(0.03f, 0.03f);
    drawManager.addDrawable(절구);
  }
 
  public void draw() {
    pushStyle();
    background(colors.day_sky);
    
    drawManager.drawing();
    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    if (uiManager.dialogUi.next()) {
      return;
    }

    loadNextScene();
  }
}
