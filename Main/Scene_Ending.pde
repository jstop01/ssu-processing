public class CreditInfo
{
    private final int lineMaxTextLength = 128;
    
    private String Name;   
    private String[] Tasks;
    
    private boolean NeedFrontSpace;
    private int FrontSpace; // 해당 텍스트의 길이 기준 n줄
    
    private boolean IsSingleText;
    private String SingleText;

    public int pos;
    
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
        IsSingleText = true;
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
            if(isLastText)
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
    private final int screenEdgeBuffer = 30;

    private int firstIdx;
    private int lastIdx;

    int backgroundScrollSpeed = 2;
    int objectScrollSpeed = 5;
    int textScrollSpeed = 1;
    
    int headLineSize = 32;
    int textSize = 16;

    int curScrollPos = 0;

    Text text = new Text();
    
    CreditInfo[] infos = {
        new CreditInfo("작업 정보"),
        new CreditInfo("방정혁", new String[]{"시나리오 팀장", "크레딧 제작"})
    };
    
    public void setup()
    {
        println("Scene_Ending : setup");
    }

    private void DrawEnding()
    {
        curScrollPos -= textScrollSpeed;

        for(int i = firstIdx; i < infos.length; i++)
        {
            var info = infos[i];
            var pos = info.pos + curScrollPos;
            var isOverTop =  pos < -screenEdgeBuffer;
            var isOverBottom = pos >= height + screenEdgeBuffer;

            text.Draw(info.GetText(), 0, pos);

            if(isOverTop)
                firstIdx = i;

            if(isOverBottom)
                lastIdx = i;

            if(i >= lastIdx)
                break;
        }
    }
    
    public void draw()
    {
        pushStyle();
        
        println("Scene_Ending : draw");
        background(255, 255, 255);
        //DrawEnding();
        
        popStyle();
    }
    
    public void mousePressed()
        {
        println("Scene_Ending : mousePressed");
    }
}
