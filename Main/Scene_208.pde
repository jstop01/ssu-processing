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
  
  public void mousePressed() {
     effectManager.addParticles(mouseX, mouseY, EffectType.SLEEP);
  }
}
