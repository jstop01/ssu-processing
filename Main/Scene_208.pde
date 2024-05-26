public class Scene_208 extends BaseScene {
  @Override
  public int getNextScene() { return 209; }
  public void setup() {
    println("Scene_208 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(#FFFFFF);
    effectManager.updateAndDraw();
    
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
