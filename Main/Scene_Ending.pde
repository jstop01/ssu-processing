public class CreditInfo
{
    private static int lineMaxTextLength = 128;
    
    private String Name;   
    private String[] Tasks;
    
    private boolean NeedFrontSpace;
    private int FrontSpace; // 해당 텍스트의 길이 기준 n줄
    
    private boolean IsSingleText;
    private boolean SingleText;
    
    public CreditInfo(String name, String[] tasks)
    {
        Name = name;
        Tasks = tasks;
    }
    
    public CreditInfo(String name, String[] tasks, int frontSpace)
    {
        Name = name;
        Tasks = tasks;
        NeedFrontSpace = true;
        FrontSpace = frontSpace;
    }
    
    public CreditInfo(String singleText)
    {
        IsSingleText = true;
        SingleText = singleText;   
    }
    
    public CreditInfo(String singleText, int frontSpace)
    {
        IsSingleText = singleText;
        NeedFrontSpace = true;
        SingleText = singleText;
    }
    
    public String GetText()
    {
        String result = "";
        
        if (IsSingleText)
        {
            result += SingleText;
            return result;
        }
        
        int curTextLength = 0;
        result += Name + " - ";
        curTextLength += result.length();
        for (int i = 0; i < Tasks.length; ++i) {
            var text = Tasks[i];
            var isLastText = i == Tasks.length - 1;
            iF(isLastText)
                text += ", ";
            var length = text.length();
            var isOverMaxLength = curTextLength + length > lineMaxTextLength;
            if (isOverMaxLength)
            {
                result += "\n";
                curTextLength = length; // 새로운 값으로 저장
            }
            result += text;
            curTextLength += length;
        }
        return result;
    }
    
    public int GetInterval()
    {
        var lineBreakText = "\n";
        int interval = 1;
        if (NeedFrontSpace)
            interval += FrontSpace;
        
        var text = GetText();
        var prevLength = text.length();
        var nextLength = text.replace(lineBreakText, "").length();
        var noLineBreak = nextLength - prevLength == 0;
        if (!noLineBreak)
            interval += (nextLength - prevLength) / lineBreakText.length();
        
        return interval;
    }
}

public class Scene_Ending extends BaseScene {
    
    int backgroundScrollSpeed = 2;
    int objectScrollSpeed = 5;
    int textScrollSpeed = 10;
    
    int headLineSize = 32;
    int textSize = 16;
    
    CreditInfo[] infos = {
        new CreditInfo("작업 정보");
        new CreditInfo("방정혁", new string[]{"시나리오 팀장", "크레딧 제작"})
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
