public class UiManager {
  public DialogUi dialogUi;
  List<Map<String, String>> currentDialogList;
  TsvProcessor tsvProcessor;

  private UiManager(){
    super();
    tsvProcessor = new TsvProcessor("Data/ss3.tsv");
    currentDialogList = tsvProcessor.readTsvFile();

    dialogUi = new DialogUi();
    dialogUi.show();
  }

  public DialogContent getDialogDataById(String id) {
    Map<String, String> data = tsvProcessor.getDataById(currentDialogList, id);
    String text = data.get("comment");
    String teller = data.get("character");
    
    DialogContent dialogContent = new DialogContent(id, text, teller);
    return dialogContent;
  }

  public void drawing () {
    dialogUi.draw();
  }

  public void mousePressed(){

  }
}

