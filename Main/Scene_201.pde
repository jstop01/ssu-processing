public class Scene_201 extends BaseScene {
  @Override
  public int getPreviousScene() { return 201; }

  @Override
  public int getNextScene() { return 202; }
  public void setup() {
    uiManager.dialogUi.push(uiManager.getDialogDataById("201001"));
    uiManager.dialogUi.push(uiManager.getDialogDataById("201002"));
    uiManager.dialogUi.push(uiManager.getDialogDataById("201003"));
    uiManager.dialogUi.push(uiManager.getDialogDataById("201004"));
    uiManager.dialogUi.push(uiManager.getDialogDataById("201005"));
    uiManager.dialogUi.push(uiManager.getDialogDataById("201006"));
    uiManager.dialogUi.push(uiManager.getDialogDataById("201007"));
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
