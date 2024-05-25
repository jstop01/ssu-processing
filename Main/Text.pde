public static class Text
{
    private static string font = "Arial.ttf";
    private static color defaultColor = color(0,0,0);
    
    public static void Draw(string text, int x, int y)
    {
        Draw(x,y,text);
    }
    
    public static void Draw(string text, int x, int y, int size)
    {
        Draw(x,y,text,size,font);
    }
    
    public static void Draw(string text, int x, int y, int size, int font)
    {
        Draw(x,y,text,size,font, defaultColor);
    }
    
    public static void Draw(string text, int x, int y, int size, int font, color textColor)
    {
        PFont font = createFont(font,size); // 이거 이렇게 쓰는게 제대로 동작하는건지 봐야할듯 (https://processing.org/reference/createFont_.html)
        textFont(font);
        fill(textColor);
        text(text, x,y);
    }
}
