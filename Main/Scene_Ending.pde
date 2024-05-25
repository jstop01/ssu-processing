public class Scene_Ending extends BaseScene {
    
    int backgroundScrollSpeed = 2;
    int objectScrollSpeed = 5;
    int textScrollSpeed = 10;
    
    public void setup()
    {
        println("Scene_Ending : setup");
    }
    
    public void draw()
    {
        pushStyle();
        
        background(0, 0, 0);
        println("Scene_Ending : draw");
        
        popStyle();
    }
    
    public void mousePressed()
    {
        println("Scene_Ending : mousePressed");
    }
}
