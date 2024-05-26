public class CreditUser
{
    public String Name;   
    public String[] Tasks;
    
    public boolean NeedFrontSpace;
    public int FrontSpace;
    
    public boolean IsSingleText;
    public boolean SingleText;
    
    public CreditUser(String name, String[] tasks)
    {
        Name = name;
        Tasks = tasks;
    }
    
    public CreditUser(String name, String[] tasks, boolean needFrontSpace, int frontSpace)
    {
        Name = name;
        Tasks = tasks;
        NeedFrontSpace = needFrontSpace;
        FrontSpace = frontSpace;
    }
    
    public CreditUser(String singleText)
    {
        IsSingleText = true;
        SingleText = singleText;   
    }
    
    public CreditUser(String singleText, boolean needFrontSpace, int frontSpace)
    {
        IsSingleText = singleText;
        NeedFrontSpace = needFrontSpace;
        SingleText = singleText;   
    }
}

public class Scene_Ending extends BaseScene {
    
    int backgroundScrollSpeed = 2;
    int objectScrollSpeed = 5;
    int textScrollSpeed = 10;
    
    CreditUser[] users = {
        new CreditUser("방정혁", new string[]{"시나리오 팀장", "크레딧 제작"})
        };
    
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
