public class DialogContent {
    public String id;
    public String text;
    public String teller;

    public DialogContent(String id, String text) {
        this.id = id;
        this.text = text;
        this.teller = null;
    }

    public DialogContent(String id, String text, String teller) {
        this.id = id;
        this.text = text;
        this.teller = teller;
    }
}