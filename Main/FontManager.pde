public final FontManager fontManager = new FontManager();

public class FontManager {
  private PFont font;

  public FontManager() {
    
  }
  
  public void setup() {
    font = createFont("res/Font/NanumBarunGothic.otf", 13);
    //font = loadFont("res/Font/NanumBarunGothic.otf");
  }
  
  
  public void drawText(String text, int x, int y, int size) {
    textFont(font, size);
    text(text, x, y);
  }

  public void drawText(String text, float x, float y, float width, float height, int size) {
    textFont(font, size);
    text(text, x, y, width, height);
  }
}
