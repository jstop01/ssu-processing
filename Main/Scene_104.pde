public class Scene_104 extends BaseScene {
  public float hammerZAngle = 0;
  public Hammer hammer = new Hammer(200, 200);
  public HPBar hpBar = new HPBar(20, 20);

  @Override
  public int getPreviousScene() { return 104; }

  @Override
  public int getNextScene() { return 105; }

  public void setup() {
    drawManager.addDrawable(hammer);
    hammer.d_rotate(hammerZAngle);
    drawManager.addDrawable(hpBar);
    uiManager.dialogUi.set(uiManager.getDialogDataById("104001"));
  }
 
  public void draw() {
    pushStyle();
    if (keyPressed) {
      boolean left = keyCode == 37;
      boolean right = keyCode == 39;
      if (left) {
        hammerZAngle = min(hammerZAngle + 5, 90);
      }
      if (right) {
        hammerZAngle = max(hammerZAngle = hammerZAngle - 10, 0);
        if (hammerZAngle == 0) {
          hpBar.hp = min(hpBar.hp + 10, 100);
        }
      }    
      hammer.d_rotate(hammerZAngle * -1);
    }

    drawManager.drawing();
    uiManager.drawing();
    
    popStyle();
  }
  
  
}
