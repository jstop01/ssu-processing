public class Scene_307 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 308; }
  public void setup() {
    var axe = new Axe(200, 200);
    axe.d_rotate(0);
    drawManager.addDrawable(axe);

    axe = new Axe(200, 200);
    axe.d_rotate(90);
    drawManager.addDrawable(axe);

    uiManager.dialogUi.push(uiManager.getDialogDataById("307001"));
  }
 
  public void draw() {
    pushStyle();
    
    
    drawManager.drawing();
    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
