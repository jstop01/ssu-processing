public class Drawable {
  private int abstractX;
  private int abstractY;
  private int w;
  private int h;
  private int zIndex;
  private PVector startPos;
  private PVector endPos;
  private PVector center;
  
  public void setup(int x, int y, int w, int h, int zIndex){
    this.abstractX = x;
    this.abstractY = y;
    this.w = w;
    this.h = h;
    this.zIndex = zIndex;

    this.startPos = new PVector(x, y);
    this.endPos = new PVector(x + w, y + h);
    this.center = new PVector(x + w/2, y + h/2);
  }

  // draw function
  public void draw(){
    System.out.println("Draw");
  }

  public void onClick(){
    System.out.println("Clicked");
  }
  
  public boolean mousePressed(){
    // System.out.println("Mouse Pressed"+ "||" + mouseX+ "||" + mouseY+ "||" + this.abstractX+ "||" + this.abstractY+ "||" + this.w+ "||" + this.h);
    if(
      mouseX > this.abstractX 
      && mouseX < this.abstractX + this.w
      && mouseY > this.abstractY 
      && mouseY < this.abstractY + this.h
    ){
      this.onClick();
      return true;
    } 
    return false;
  }
}

