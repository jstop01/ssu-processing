void Scene_103_Setup(DrawManager drawManager) {
    loadBackground("4", drawManager);

    var boy = objectFactory.create(CharacterType.boy, CharacterPoseType.smile);
    boy.setPosition(500, 400);
    boy.setScale(0.3f, 0.3f);
    drawManager.addDrawable(boy);

    var girl = objectFactory.create(CharacterType.girl, CharacterPoseType.smile);
    girl.setPosition(450, 550);
    girl.setScale(0.3f, 0.3f);
    drawManager.addDrawable(girl);
    
    var mom = objectFactory.create(CharacterType.mom, CharacterPoseType.front_ricecake);
    mom.setPosition(800, 450);
    mom.setScale(0.3f, 0.3f);
    drawManager.addDrawable(mom);

    var 절구 = objectFactory.create("res/images/object/morter.png");
    절구.setPosition(width / 2, 450);
    절구.setScale(0.03f, 0.03f);
    drawManager.addDrawable(절구);
}

public class Scene_103 extends BaseScene {
  @Override
  public int getPreviousScene() { return 102; }

  @Override
  public int getNextScene() { return 104; }
  public void setup() {
    uiManager.dialogUi.enqueueAll(uiManager.getDialogForScene(this));
    uiManager.dialogUi.next();

    Scene_103_Setup(drawManager);
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
