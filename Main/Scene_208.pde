public class Scene_208 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 209; }
  public void setup() {
    println("Scene_208 : setup");
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("208001"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("208002"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("208003"));
    uiManager.dialogUi.next();

    var storyboard = objectFactory.create("compressedRes/storyboard/208.png");
    storyboard.setPosition(width / 2, height / 2);
    drawManager.addDrawable(storyboard);
  }
 
  public void draw() {
    pushStyle();
    
    background(#FFFFFF);
    drawManager.drawing();
    uiManager.drawing();
    
    popStyle();
  }

  int clickCount = 0;
  
  public void mousePressed() {
    if (clickCount == 0) {
      effectManager.addParticles(mouseX, mouseY, EffectType.SLEEP);
      clickCount++;
    } else {
      if (uiManager.dialogUi.next()) {
        return;
      }
      loadNextScene();
    }
  }
}
