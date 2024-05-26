public class Scene_208 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 209; }
  public void setup() {
    println("Scene_208 : setup");
    uiManager.dialogUi.push(uiManager.getDialogDataById("208001"));
    uiManager.dialogUi.push(uiManager.getDialogDataById("208002"));
    uiManager.dialogUi.push(uiManager.getDialogDataById("208003"));

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
     loadNextScene();
    }
  }
}
