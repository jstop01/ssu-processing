public class UiManager {
  public DialogUi dialogUi;
  List<Map<String, String>> currentDialogList;
  TsvProcessor tsvProcessor;

  private UiManager(){
    super();
    tsvProcessor = new TsvProcessor("Data/ss1.tsv");
    var s1 = tsvProcessor.readTsvFile();
    tsvProcessor = new TsvProcessor("Data/ss2.tsv");
    var s2 = tsvProcessor.readTsvFile();
    tsvProcessor = new TsvProcessor("Data/ss3.tsv");
    var s3 = tsvProcessor.readTsvFile();

    currentDialogList = new ArrayList<Map<String, String>>();
    currentDialogList.addAll(s1);
    currentDialogList.addAll(s2);
    currentDialogList.addAll(s3);

    dialogUi = new DialogUi();
    dialogUi.show();
  }

  public DialogContent getDialogDataById(String id) {
    Map<String, String> data = tsvProcessor.getDataById(currentDialogList, id);
    if (data == null) {
        println("No data found for id: " + id);
        return null;
    }
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

