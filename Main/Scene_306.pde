public class Scene_306 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 307; }
  public void setup() {
    uiManager.dialogUi.set(uiManager.getDialogDataById("306001"));

    var speechBubble = objectFactory.create("compressedRes/images/ui/speech-bubble_3.png");
    speechBubble.setPosition(300, 100);
    speechBubble.setScale(0.7, 0.7);
    drawManager.addDrawable(speechBubble);

    var tiger = objectFactory.create(ObjectType.tiger_mom, ObjectPoseType.back);
    tiger.setPosition(800, 800);
    tiger.setScale(0.7, 0.7);
    drawManager.addDrawable(tiger);
  }
 
  public void draw() {
    pushStyle();
    
    
    drawGradientBackground();
    drawManager.drawing();
    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
