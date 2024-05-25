public class Scene_307 extends BaseScene {
  @Override
  public int getNextScene() { return 308; }
  public void setup() {
    var axe = new Axe(200, 200);
    axe.d_rotate(0);
    drawManager.addDrawable(axe);

    axe = new Axe(200, 200);
    axe.d_rotate(90);
    drawManager.addDrawable(axe);
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    drawManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
