public class Scene_104 extends BaseScene {
  @Override
  public int getPreviousScene() { return 104; }

  @Override
  public int getNextScene() { return 105; }

  public void setup() {
    var hammer = new Hammer(200, 200);
    drawManager.addDrawable(hammer);
    var hpBar = new HPBar(20, 20);
    drawManager.addDrawable(hpBar);
    uiManager.dialogUi.set(uiManager.getDialogDataById("104001"));
    
  }
 
  public void draw() {
    pushStyle();
    
    drawManager.drawing();
    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
  }
  
}
