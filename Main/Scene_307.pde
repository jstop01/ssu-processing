public class Scene_307 extends BaseScene {
  public void setup() {
    var axe = new Axe();
    axe.setPosition(400, 400);
    drawManager.addDrawable(axe);
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    drawManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_307 : mousePressed");
  }
}

