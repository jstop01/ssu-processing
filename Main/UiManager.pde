public class UiManager {
  public DialogUi dialogUi;
  
  private UiManager(){
    super();
    dialogUi = new DialogUi();
    dialogUi.show();
  }

  public void drawing () {
    dialogUi.draw();
  }

  public void mousePressed(){

  }
}

