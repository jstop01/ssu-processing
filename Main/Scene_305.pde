public class Scene_305 extends BaseScene {
  public void setup() {
    var mountain = new Mountain(600, 300);
    drawManager.addDrawable(mountain);
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    drawManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_305 : mousePressed");
  }
}
