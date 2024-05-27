public class Scene_311 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 312; }
  
  public void setup() {
    var speechBubble = objectFactory.create("res/ui/speech-bubble_2.png");
    speechBubble.setPosition(600, 400);
    drawManager.addDrawable(speechBubble);

    uiManager.dialogUi.set(uiManager.getDialogDataById("311001"));
  }
 
  public void draw() {
    pushStyle();
    
    background(#040348);
    println("Scene_311 : draw");

    drawManager.drawing();
    uiManager.drawing();
    // TODO: localize
    fontManager.drawText(
      "하늘님,",
      600, 250, 30);

      fontManager.drawText(
      "저희를 살리시려거든 새 동아줄을 내려주시고",
      350, 300, 30);

      fontManager.drawText(
      "죽이시려거든 썩은 동아줄을 내려주세요!",
      350, 350, 30);

    popStyle();
  }
  
  public void mousePressed() {
    loadNextScene();
  }
}
