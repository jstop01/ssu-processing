int DIALOG_HEIGHT = 200;
int DIALOG_PADDING = 16;
int DIALOG_MARGIN = 10;
int TELLER_TEXT_SIZE = 24;
int MSG_TEXT_SIZE = 28;

public class DialogUi {
    private boolean visible;
    private DialogContent current;

    private int x;
    private int y;

    public DialogUi() {
        this.visible = false;
        current = new DialogContent("0", "", "");
        this.x = width / 4;
        this.y = height - DIALOG_HEIGHT - (DIALOG_MARGIN * 2); // 20 은 MARGIN
    }

    private void drawDialogBox() {
        strokeWeight(1);
        rect(this.x, this.y, width/2, DIALOG_HEIGHT, 5);
    }

    private void drawText() {
        int textAnchor = this.y + DIALOG_PADDING * 2;
        if (this.current.teller != null) {
            textSize(TELLER_TEXT_SIZE);
            fill(0, 0, 255);
            text(this.current.teller, x + DIALOG_PADDING, y + DIALOG_PADDING * 2);
            textAnchor = this.y + DIALOG_PADDING * 2 + TELLER_TEXT_SIZE + 10;
        }
        textSize(MSG_TEXT_SIZE);
        fill(0, 0, 0);
        text(this.current.text, x + DIALOG_PADDING, textAnchor, width/2 - DIALOG_PADDING * 2, 1000);
    }

    private void draw() {
        // 기본 DIALOG BOX Render
        if (this.visible) {
            this.drawDialogBox();
            this.drawText();
        }
    }

    public void show() {
        this.visible = true;
    }

    public void hide() {
        this.visible = false;
    }

    public void push(DialogContent content) {
        this.current = content;
    }

    public void push(String msg, String teller) {
        this.current.text = msg;
        this.current.teller = teller;
    }

    public String getCurrentId() {
        return this.current.id;
    }
}