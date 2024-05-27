public class Text
{
    private String font = "Arial.ttf";
    private int defaultSize = 24;
    private color defaultColor = #000000;
    
    public void Draw(String text, int x, int y)
    {
        Draw(text,x,y,defaultSize);
    }
    
    public void Draw(String text, int x, int y, int size)
    {
        Draw(text,x,y,size,font);
    }
    
    public void Draw(String text, int x, int y, int size, String font)
    {
        Draw(text,x,y,size,font, defaultColor);
    }
    
    public void Draw(String text, int x, int y, int size, String font, color textColor)
    {
        PFont pFont = createFont(font,size); // 이거 이렇게 쓰는게 제대로 동작하는건지 봐야할듯 (https://processing.org/reference/createFont_.html)
        textFont(pFont);
        fill(textColor);
        text(text, x,y);
    }
}
