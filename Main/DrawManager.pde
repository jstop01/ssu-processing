final DrawManager drawManager = new DrawManager();
public class DrawManager {
    public ArrayList<Drawable> drawables = new ArrayList<Drawable>();
    private DrawManager(){}

    // public DrawManager getInstance() {
	// 	if(drawManager == null) {
	// 		synchronized (DrawManager.class) {
	// 			if(drawManager == null) {
	// 				drawManager = new DrawManager();
	// 			}
	// 		}
	// 	}
	// 	return drawManager;
	// }

    public void addDrawable(Drawable drawable){
        drawables.add(drawable);
        // sort by drawable zIndex
        drawables.sort((o1, o2) -> o1.zIndex - o2.zIndex);
    }
    public void drawing (){
        for(int i = drawables.size() - 1; i >= 0; i--){
            Drawable drawable = drawables.get(i);
            drawable.draw();
        }
    }

    public void mousePressed(){
        // loop reverse
        for (Drawable drawable : drawables) {
            boolean clicked = drawable.mousePressed();
            System.out.println(clicked);
            if(clicked){
                break;
            }
        }
    }
}

