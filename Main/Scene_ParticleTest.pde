public class Scene_ParticleTest extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return -1; }
  ShapeObject tiger;
  public void setup() {
    tiger = objectFactory.create(ObjectType.tiger_mom, ObjectPoseType.back);
    tiger.setPosition(700, 500);
    tiger.scale.x = 0.4;
    tiger.scale.y = 0.4;
  }
 
  public void draw() {
    pushStyle();
    
    background(#FFFFFF);
    drawManager.drawing();
    tiger.draw();
    effectManager.updateAndDraw();
    
    popStyle();
  }
  
  public void mousePressed() {
  }

  public void keyPressed() {
    effectManager.addParticles(mouseX, mouseY, EffectType.BLOOD);
  }
}
